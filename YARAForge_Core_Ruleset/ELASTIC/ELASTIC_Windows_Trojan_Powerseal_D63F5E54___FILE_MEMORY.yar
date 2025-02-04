rule ELASTIC_Windows_Trojan_Powerseal_D63F5E54___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Powerseal (Windows.Trojan.PowerSeal)"
		author = "Elastic Security"
		id = "d63f5e54-6be1-453d-a96e-083a025deba2"
		date = "2023-03-16"
		modified = "2023-05-26"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_PowerSeal.yar#L1-L21"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "523dcff68a51ea8fb022066b5f09394e8174d6c157222a08100de30669898057"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "bc63511a0b12edaf7a2ace02f79ab9a2dbea5a0879fd976cc91308f98bac1c52"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "PowerSeal.dll" wide fullword
		$a2 = "InvokePs" ascii fullword
		$a3 = "amsiInitFailed" wide fullword
		$a4 = "is64BitOperatingSystem" ascii fullword

	condition:
		all of them
}