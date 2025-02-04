rule ELASTIC_Windows_Hacktool_Sharpshares_88Cdcd52___FILE_MEMORY
{
	meta:
		description = "Detects Windows Hacktool Sharpshares (Windows.Hacktool.SharpShares)"
		author = "Elastic Security"
		id = "88cdcd52-9f5b-4ab6-8f20-137c8569d112"
		date = "2022-10-20"
		modified = "2022-11-24"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Hacktool_SharpShares.yar#L1-L30"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "bbdd3620a67aedec4b9a68b2c9cc880b6631215e129816aea19902a6f4bc6f41"
		logic_hash = "85c59b939da6158f931e779c2884cea77b80fab54ee5e157d86afa19f0253db3"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "ae0cf8bbdfecfebf69d718dc0ccc8402ed7f2f949e2b6bab606bbf69aa6c2518"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$guid = "BCBC884D-2D47-4138-B68F-7D425C9291F9" ascii wide nocase
		$print_str0 = "all enabled computers with \"primary\" group \"Domain Computers\"" ascii wide
		$print_str1 = "all enabled Domain Controllers (not read-only DCs)" ascii wide
		$print_str2 = "all enabled servers excluding Domain Controllers or read-only DCs" ascii wide
		$str0 = "(&(objectCategory=computer)(!(userAccountControl:1.2.840.113556.1.4.803:=2)))" ascii wide
		$str1 = "(&(objectCategory=computer)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(userAccountControl:1.2.840.113556.1.4.803:=8192))" ascii wide
		$str2 = "(&(objectCategory=computer)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(!(userAccountControl:1.2.840.113556.1.4.803:=8192))(!(userAccountControl:1.2.840.113556.1.4.803:=67100867)))" ascii wide
		$str3 = "(&(objectCategory=computer)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(operatingSystem=*server*)(!(userAccountControl:1.2.840.113556.1.4.803:=8192))(!(userAccountControl:1.2.840.113556.1.4.803:=67100867)))" ascii wide
		$str4 = "servers-exclude-dc" ascii wide
		$str5 = "all enabled servers" ascii wide
		$str6 = "[w] \\\\{0}\\{1}" ascii wide
		$str7 = "[-] \\\\{0}\\{1}" ascii wide

	condition:
		$guid or all of ($print_str*) or 4 of ($str*)
}