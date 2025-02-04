rule ELASTIC_Windows_Trojan_Downtown_901C4Fdd___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Downtown (Windows.Trojan.DownTown)"
		author = "Elastic Security"
		id = "901c4fdd-858c-4ad8-be12-f88799d591b9"
		date = "2023-05-10"
		modified = "2023-06-13"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_DownTown.yar#L1-L20"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "6368d37fa9ba4e32131e16bceaee322f2fa8507873d01ebd687536e593354725"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "1ef6dfd9be1e6fa2d1c6b5ce32ad13252f5becf709493a7cceff3519750e0b1e"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "SendFileBuffer error -1 !!!" fullword
		$a2 = "ScheduledDownloadTasks CODE_FILE_VIEW " fullword
		$a3 = "ExplorerManagerC.dll" fullword

	condition:
		3 of them
}