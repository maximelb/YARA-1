rule ELASTIC_Windows_Trojan_Guloader_C4D9Dd33___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Guloader (Windows.Trojan.Guloader)"
		author = "Elastic Security"
		id = "c4d9dd33-b7e7-4ff4-a2f3-62316d064f5a"
		date = "2021-08-17"
		modified = "2021-10-04"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_Guloader.yar#L25-L43"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "a3e2d5013b80cd2346e37460753eca4a4fec3a7941586cc26e049a463277562e"
		logic_hash = "623ea751fc32648720bda40598024d4d5b6a9a11b3cce3c9427310ba17745643"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "53a2d6f895cdd1a6384a55756711d9d758b3b20dd0b87d62a89111fd1a20d1d6"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "This program cannot be run under virtual environment or debugging software !" ascii fullword

	condition:
		all of them
}