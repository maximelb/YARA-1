rule ELASTIC_Windows_Trojan_Darkcomet_1Df27Bcc___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Darkcomet (Windows.Trojan.Darkcomet)"
		author = "Elastic Security"
		id = "1df27bcc-9f18-48d4-bd7f-73bdc7cb1e63"
		date = "2021-08-16"
		modified = "2021-10-04"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_Darkcomet.yar#L1-L23"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "7fbe87545eef49da0df850719536bb30b196f7ad2d5a34ee795c01381ffda569"
		logic_hash = "5886e3316839e64f934a0e84d85074e076f3e1e44f86fee35a87eb560bfa2aa7"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "63b77999860534b71b7b4e7b3da9df175ccd0009f4c13215a59c6b83e0e95b3b"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "BTRESULTHTTP Flood|Http Flood task finished!|" ascii fullword
		$a2 = "is now open!|" ascii fullword
		$a3 = "ActiveOnlineKeylogger" ascii fullword
		$a4 = "#BOT#RunPrompt" ascii fullword
		$a5 = "GETMONITORS" ascii fullword

	condition:
		all of them
}