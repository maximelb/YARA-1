rule ELASTIC_Windows_Hacktool_Darkloadlibrary_C25Ee4Eb___FILE_MEMORY
{
	meta:
		description = "Detects Windows Hacktool Darkloadlibrary (Windows.Hacktool.DarkLoadLibrary)"
		author = "Elastic Security"
		id = "c25ee4eb-8ea6-40e2-a1a3-ec60491ced03"
		date = "2022-12-02"
		modified = "2023-01-11"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Hacktool_DarkLoadLibrary.yar#L1-L29"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "5546194a71bc449789c3697f9c106860ac0a21e1ccf2b1196120b3f92f4b5306"
		logic_hash = "c585abbe72834e9ba2e5f1c8070a43b0f10c2b574c72ffe1def4bfd431096415"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "a73ca4c615d3567c48cc9ec3eedb0497de67960e9610fd1d0ad136075005d10b"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$guid = "3DDD52BB-803A-40E7-90E4-A879A873DD8B" ascii wide nocase
		$print_str0 = "LocalLdrGetProcedureAddress: failed to resolve address of: %s" ascii fullword
		$print_str1 = "Not implemented yet, sorry" wide
		$print_str2 = "Failed to link module to PEB: %s" ascii wide fullword
		$print_str3 = "Failed to resolve imports: %s" ascii wide fullword
		$print_str4 = "Failed to map sections: %s" ascii wide fullword
		$print_str5 = "Failed to open local DLL file" wide fullword
		$print_str6 = "Failed to get DLL file size" wide fullword
		$print_str7 = "Failed to allocate memory for DLL data" wide fullword
		$print_str8 = "Failed to read data from DLL file" wide fullword
		$print_str9 = "Failed to close handle on DLL file" wide

	condition:
		$guid or 4 of ($print_str*)
}