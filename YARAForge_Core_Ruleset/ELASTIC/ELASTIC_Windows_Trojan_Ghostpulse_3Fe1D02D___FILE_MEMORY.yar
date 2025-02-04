rule ELASTIC_Windows_Trojan_Ghostpulse_3Fe1D02D___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Ghostpulse (Windows.Trojan.GhostPulse)"
		author = "Elastic Security"
		id = "3fe1d02d-5de3-42df-8389-6a55fc2b8afd"
		date = "2023-10-12"
		modified = "2023-10-26"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_GhostPulse.yar#L22-L39"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "4ef78d436a153ed751a8483c1e43ec2ba053dedfa0da2780fded42012d3042c1"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "18aed348ba64bee842fb6af3b3220e108052a67f49724cf34ba52c8ec7c15cac"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a = { 48 89 5C 24 08 48 89 7C 24 10 8B DA 45 33 D2 48 8B F9 41 2B D9 74 50 4C 8B D9 4C 2B C1 0F 1F 00 33 C9 }

	condition:
		all of them
}