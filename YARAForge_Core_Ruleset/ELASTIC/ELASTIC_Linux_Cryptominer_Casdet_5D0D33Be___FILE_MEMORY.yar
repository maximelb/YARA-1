rule ELASTIC_Linux_Cryptominer_Casdet_5D0D33Be___FILE_MEMORY
{
	meta:
		description = "Detects Linux Cryptominer Casdet (Linux.Cryptominer.Casdet)"
		author = "Elastic Security"
		id = "5d0d33be-e53e-4188-9957-e1af2a802867"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Cryptominer_Casdet.yar#L1-L19"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "4b09115c876a8b610e1941c768100e03c963c76b250fdd5b12a74253ef9e5fb6"
		logic_hash = "e3264f614e257d853070907866b838d1cb53c1f60f7a0123ec503f1d540a15d7"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "2d584f6815093d37bd45a01146034d910b95be51462f01f0d4fc4a70881dfda6"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { C3 EB 05 48 89 C3 EB CF 48 8B BC 24 A0 00 00 00 48 85 FF 74 D7 48 }

	condition:
		all of them
}