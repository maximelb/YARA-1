rule ELASTIC_Linux_Cryptominer_Xpaj_Fdbd614E___FILE_MEMORY
{
	meta:
		description = "Detects Linux Cryptominer Xpaj (Linux.Cryptominer.Xpaj)"
		author = "Elastic Security"
		id = "fdbd614e-e628-43ff-86d4-1057f9d544ac"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Cryptominer_Xpaj.yar#L1-L19"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "3e2b1b36981713217301dd02db33fb01458b3ff47f28dfdc795d8d1d332f13ea"
		logic_hash = "70e6450f98411750361481aaad0d3ea079f58b1ae09970f04da09c20137a50fa"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "456b69d4035aa2d682ba081c2f7b24c696f655ec164645f83c9aef5bd262f510"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 72 72 6F 72 3A 20 47 65 74 25 73 20 74 65 6D 70 20 72 65 74 75 }

	condition:
		all of them
}