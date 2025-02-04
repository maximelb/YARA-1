rule ELASTIC_Linux_Trojan_Meterpreter_A82F5D21___FILE_MEMORY
{
	meta:
		description = "Detects Linux Trojan Meterpreter (Linux.Trojan.Meterpreter)"
		author = "Elastic Security"
		id = "a82f5d21-3b01-4a05-a34a-6985c1f3b460"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Trojan_Meterpreter.yar#L1-L18"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "d76886222de7292e8a76717f6d49452f52aaffb957bb0326bcfc7a35c3fdfc6a"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "b0adb928731dc489a615fa86e46cc19de05e251eef2e02eb02f478ed1ca01ec5"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { F8 02 74 22 77 08 66 83 F8 01 74 20 EB 24 66 83 F8 03 74 0C 66 83 }

	condition:
		all of them
}