rule ELASTIC_Linux_Trojan_Bluez_50E87Fa9___FILE_MEMORY
{
	meta:
		description = "Detects Linux Trojan Bluez (Linux.Trojan.Bluez)"
		author = "Elastic Security"
		id = "50e87fa9-f053-4507-ae10-b5d33b693bb3"
		date = "2021-06-28"
		modified = "2021-09-16"
		reference = "1e526b6e3be273489afa8f0a3d50be233b97dc07f85815cc2231a87f5a651ef1"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Trojan_Bluez.yar#L1-L19"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "53754c538a7dea6f06e37980901350feddc3517821ea42544cb96e371709752f"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "67855d65973d0bbdad90299f1432e7f0b4b8b1e6dfd0737ee5bee89161f2a890"
		severity = "100"
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 63 68 72 00 6B 69 6C 6C 00 73 74 72 6C 65 6E 00 62 69 6E 64 00 }

	condition:
		all of them
}