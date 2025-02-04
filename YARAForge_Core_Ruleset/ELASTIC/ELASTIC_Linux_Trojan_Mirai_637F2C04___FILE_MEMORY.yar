rule ELASTIC_Linux_Trojan_Mirai_637F2C04___FILE_MEMORY
{
	meta:
		description = "Detects Linux Trojan Mirai (Linux.Trojan.Mirai)"
		author = "Elastic Security"
		id = "637f2c04-98e4-45aa-b60a-14a96c6cebb7"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Trojan_Mirai.yar#L970-L987"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "cff4aa6c613ccc64f64441f7e40f79d3a22b5c12856c32814545bd41d5f112bd"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "7af3d573af8b7f8252590a53adda52ecf53bdaf9a86b52ef50702f048e08ba8c"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 10 48 8B 45 E0 0F B6 00 38 C2 0F 95 C0 48 FF 45 E8 48 FF 45 E0 }

	condition:
		all of them
}