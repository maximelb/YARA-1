rule ELASTIC_Linux_Trojan_Tsunami_019F0E75___FILE_MEMORY
{
	meta:
		description = "Detects Linux Trojan Tsunami (Linux.Trojan.Tsunami)"
		author = "Elastic Security"
		id = "019f0e75-a766-4778-8337-c5bce478ecd9"
		date = "2021-01-12"
		modified = "2021-09-16"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Trojan_Tsunami.yar#L380-L398"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "575b0dc887d132aa3983e5712b8f642b03762b0685fbd5a32c104bca72871857"
		logic_hash = "7a63eb94266b04a31ba67165c512e2e060c3e344665aeed748a51943143b2219"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "3b66dcdd89ce564cf81689ace33ee91682972421a9926efa1985118cefebdddc"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 2E 0A 00 2B 73 74 64 00 2B 73 74 6F 70 00 2B 75 6E 6B 6E 6F }

	condition:
		all of them
}