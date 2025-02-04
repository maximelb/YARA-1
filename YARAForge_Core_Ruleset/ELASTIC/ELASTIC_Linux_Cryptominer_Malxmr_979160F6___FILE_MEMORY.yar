rule ELASTIC_Linux_Cryptominer_Malxmr_979160F6___FILE_MEMORY
{
	meta:
		description = "Detects Linux Cryptominer Malxmr (Linux.Cryptominer.Malxmr)"
		author = "Elastic Security"
		id = "979160f6-402a-4e4b-858a-374c9415493b"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Cryptominer_Malxmr.yar#L181-L198"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "e70097fb263c90576e87e76cc7be391dbf9c9d73bbd7fb8e5ec282e6ac1f648d"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "fb933702578e2cf7e8ad74554ef93c07b610d6da8bc5743cbf86c363c1615f40"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { E0 08 C1 ED 10 41 31 C3 89 D8 45 09 D0 C1 E8 10 C1 E3 10 41 C1 }

	condition:
		all of them
}