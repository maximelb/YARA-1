rule ELASTIC_Windows_Trojan_Bloodalchemy_63084Eea___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Bloodalchemy (Windows.Trojan.BloodAlchemy)"
		author = "Elastic Security"
		id = "63084eea-358b-4fb0-9668-3f40f0aae9e7"
		date = "2023-09-25"
		modified = "2023-09-25"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_BloodAlchemy.yar#L41-L58"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "3fe64502992281511e942b8f4541d61b33e900dbe23ea9f976c7eb9522ce4cbd"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "3f6ef0425b846b2126263c590d984bc618ad61de91a9141160c2b804c585ff6d"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a = { 55 8B EC 83 EC 38 53 56 57 8B 75 08 8D 7D F0 33 C0 33 DB AB 89 5D C8 89 5D D0 89 5D D4 AB 89 5D }

	condition:
		all of them
}