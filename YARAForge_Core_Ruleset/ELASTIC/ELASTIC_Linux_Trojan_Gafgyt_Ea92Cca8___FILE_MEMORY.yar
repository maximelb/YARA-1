rule ELASTIC_Linux_Trojan_Gafgyt_Ea92Cca8___FILE_MEMORY
{
	meta:
		description = "Detects Linux Trojan Gafgyt (Linux.Trojan.Gafgyt)"
		author = "Elastic Security"
		id = "ea92cca8-bba7-4a1c-9b88-a2d051ad0021"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Trojan_Gafgyt.yar#L475-L492"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "5a9598b3fd37b15444063403a481df1a43894ddcbbd343961e1c770cb74180c9"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "aa4aee9f3d6bedd8234eaf8778895a0f5d71c42b21f2a428f01f121e85704e8e"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 53 65 6C 66 20 52 65 70 20 46 75 63 6B 69 6E 67 20 4E 65 54 69 53 20 61 6E 64 }

	condition:
		all of them
}