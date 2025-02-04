rule ELASTIC_Windows_Hacktool_Sharplaps_381C3F40___FILE_MEMORY
{
	meta:
		description = "Detects Windows Hacktool Sharplaps (Windows.Hacktool.SharpLAPS)"
		author = "Elastic Security"
		id = "381c3f40-b6c6-4e50-be28-3d34ba07b644"
		date = "2022-12-22"
		modified = "2022-12-22"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Hacktool_SharpLAPS.yar#L1-L26"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "ef0d508b3051fe6f99ba55202a17237f29fdbc0085e3f5c99b1aef52c8ebe425"
		logic_hash = "d94f9e4200a63283346919c121873130ad90e4ad5979c017cb71dc0cc910a64a"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "556b9ba9c0a2f08ff0b27e38e273f5817011de335436feb2a30cac74285d7e4f"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$guid = "1e0986b4-4bf3-4cea-a885-347b6d232d46" ascii wide nocase
		$str_name = "SharpLAPS.exe" ascii wide
		$str0 = "Using the current session" ascii wide
		$str1 = "Extracting LAPS password" ascii wide
		$str2 = "(&(objectCategory=computer)(ms-MCS-AdmPwd=*)(sAMAccountName=" ascii wide
		$str4 = "Machine" ascii wide
		$str5 = "sAMAccountName" ascii wide
		$str6 = "ms-Mcs-AdmPwd" ascii wide

	condition:
		$guid or 6 of ($str*)
}