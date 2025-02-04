rule ELASTIC_Windows_Trojan_Icedid_81Eff9A3___FILE_MEMORY
{
	meta:
		description = "IcedID fork core bot loader"
		author = "Elastic Security"
		id = "81eff9a3-4c75-48a5-8160-718c9a2d1e14"
		date = "2023-05-05"
		modified = "2023-06-13"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_IcedID.yar#L337-L356"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "96dacdf50d1db495c8395d7cf454aa3a824801cf366ac368fe496f89b5f98fe7"
		logic_hash = "923dd8166cce0ec32b3b8b20cad192b3c15b7ce7c17fd44ddda739ad205a6c06"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "f764c4b2a562eb92a7326a45b180da7f930ffcc4f0b88bbd640c2fe7b71f82b6"
		threat_name = "Windows.Trojan.IcedID"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a = "E:\\source\\anubis\\int-bot\\x64\\Release\\int-bot.pdb" ascii fullword

	condition:
		all of them
}