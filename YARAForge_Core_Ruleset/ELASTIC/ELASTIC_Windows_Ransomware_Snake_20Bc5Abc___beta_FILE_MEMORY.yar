rule ELASTIC_Windows_Ransomware_Snake_20Bc5Abc___beta_FILE_MEMORY
{
	meta:
		description = "Identifies SNAKE ransomware"
		author = "Elastic Security"
		id = "20bc5abc-c519-47d2-a6de-5108071a9144"
		date = "2020-06-30"
		modified = "2021-08-23"
		reference = "https://labs.sentinelone.com/new-snake-ransomware-adds-itself-to-the-increasing-collection-of-golang-crimeware/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Ransomware_Snake.yar#L70-L89"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "f3d8a523e04e516e8e059c9f13df355e6caf29a528cfebdf730e3a7d135e3351"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "e7f1be2bd7e1f39b79ac89cf58c90abdb537ff54cbf161192d997e054d3f0883"
		threat_name = "Windows.Ransomware.Snake"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$b1 = { 57 12 1A 10 1A 10 1A 10 1A 10 1A 10 1A 10 1A 10 1A 10 1A 10 1A }

	condition:
		1 of ($b*)
}