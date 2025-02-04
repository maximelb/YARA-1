rule ELASTIC_Linux_Trojan_Xhide_840B27C7___FILE_MEMORY
{
	meta:
		description = "Detects Linux Trojan Xhide (Linux.Trojan.Xhide)"
		author = "Elastic Security"
		id = "840b27c7-191f-4d31-9b46-f22be634b2af"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Trojan_Xhide.yar#L41-L59"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "0dc35f1a1fe1c59e454cd5645f3a6220b7d85661437253a3e627eed04eca2560"
		logic_hash = "6b0bfe69558399af6e0469a31741dcf2eb91fbe3e130267139240d3458eb8a0d"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "f1281db9a49986e23ef1fd9a97785d3bd7c9b3b855cf7e51744487242dd395a3"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 8B 45 98 83 E0 40 85 C0 75 16 8B 45 98 83 E0 08 85 C0 75 0C 8B }

	condition:
		all of them
}