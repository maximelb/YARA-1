rule ELASTIC_Linux_Cryptominer_Roboto_0B6807F8___FILE_MEMORY
{
	meta:
		description = "Detects Linux Cryptominer Roboto (Linux.Cryptominer.Roboto)"
		author = "Elastic Security"
		id = "0b6807f8-49c1-485f-9233-1a14f98935bc"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Cryptominer_Roboto.yar#L1-L19"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "c2542e399f865b5c490ee66b882f5ff246786b3f004abb7489ec433c11007dda"
		logic_hash = "d945c7a23b9f435851f3c998231da615e220c259051cf213186c28f3279be1dd"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "65f373b6e820c2a1fa555182b8e4547bf5853326bdf3746c7592d018dc2ed89f"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { FB 49 89 CF 4D 0F AF FC 4D 01 DF 4D 89 CB 4C 0F AF D8 4D 01 FB 4D }

	condition:
		all of them
}