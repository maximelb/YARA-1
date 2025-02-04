rule ELASTIC_Windows_Trojan_Gozi_Fd494041___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Gozi (Windows.Trojan.Gozi)"
		author = "Elastic Security"
		id = "fd494041-3fe8-4ffa-9ab8-6798032f1d66"
		date = "2021-03-22"
		modified = "2021-08-23"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_Gozi.yar#L1-L32"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "0a1c1557bdb8c1b99e2b764fc6b21a07e33dc777b492a25a55cbd8737031e237"
		logic_hash = "fdd18817e7377f1b4006d3bf135d924b8ead62a461ea56f57157b2856ba6846b"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "faabcdfb3402a5951ff1fde4f994dcb00ec9a71fb815b80dc1da9b577bf92ec2"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "/C ping localhost -n %u && del \"%s\"" wide fullword
		$a2 = "/C \"copy \"%s\" \"%s\" /y && \"%s\" \"%s\"" wide fullword
		$a3 = "/C \"copy \"%s\" \"%s\" /y && rundll32 \"%s\",%S\"" wide fullword
		$a4 = "ASCII.GetString(( gp \"%S:\\%S\").%s))',0,0)" wide
		$a5 = "filename=\"%.4u.%lu\""
		$a6 = "Urundll32 \"%s\",%S" wide fullword
		$a7 = "version=%u&soft=%u&user=%08x%08x%08x%08x&server=%u&id=%u&type=%u&name=%s" ascii fullword
		$a8 = "%08X-%04X-%04X-%04X-%08X%04X" ascii fullword
		$a9 = "&whoami=%s" ascii fullword
		$a10 = "%u.%u_%u_%u_x%u" ascii fullword
		$a11 = "size=%u&hash=0x%08x" ascii fullword
		$a12 = "&uptime=%u" ascii fullword
		$a13 = "%systemroot%\\system32\\c_1252.nls" ascii fullword
		$a14 = "IE10RunOnceLastShown_TIMESTAMP" ascii fullword

	condition:
		8 of ($a*)
}