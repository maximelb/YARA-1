rule ELASTIC_Windows_Trojan_Qbot_7D5Dc64A___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Qbot (Windows.Trojan.Qbot)"
		author = "Elastic Security"
		id = "7d5dc64a-a597-44ac-a0fd-cefffc5e9cff"
		date = "2021-10-04"
		modified = "2022-01-13"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_Qbot.yar#L41-L60"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "a2bacde7210d88675564106406d9c2f3b738e2b1993737cb8bf621b78a9ebf56"
		logic_hash = "5c8858502050494ab20a230f04c2c1cb4bfcd80f4a248dad82787d7ce67c741d"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "ab80d96a454e0aad56621e70be4d55f099c41b538a380feb09192d252b4db5aa"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "%u.%u.%u.%u.%u.%u.%04x" ascii fullword
		$a2 = "stager_1.dll" ascii fullword

	condition:
		all of them
}