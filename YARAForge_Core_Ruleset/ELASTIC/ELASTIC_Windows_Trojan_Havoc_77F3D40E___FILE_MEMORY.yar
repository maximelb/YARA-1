rule ELASTIC_Windows_Trojan_Havoc_77F3D40E___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Havoc (Windows.Trojan.Havoc)"
		author = "Elastic Security"
		id = "77f3d40e-9365-4e76-a1a3-36d128e775a9"
		date = "2022-10-20"
		modified = "2022-11-24"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_Havoc.yar#L1-L35"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "3427dac129b760a03f2c40590c01065c9bf2340d2dfa4a4a7cf4830a02e95879"
		logic_hash = "3d2733ed24d90e9e851ec36a08c497e9c90b47c3dcbb8755e3f6b6a6bd3a8b54"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "95d35d167df7f77f23b1afb1b7655cc47830c9986c54791b562c33db8f2773ae"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$core = { 48 ?? ?? 2C 06 00 00 00 ?? ?? 48 ?? ?? 5C 06 00 00 00 ?? ?? ?? ?? ?? ?? 48 8B ?? 5C 06 00 00 ?? F6 99 5A 2E E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 4C 02 00 00 48 8B ?? 5C 06 00 00 ?? 23 DB 07 03 E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 44 02 00 00 48 8B ?? 5C 06 00 00 ?? DA 81 B3 C0 E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 54 02 00 00 48 8B ?? 5C 06 00 00 ?? D7 71 BA 70 E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 64 02 00 00 48 8B ?? 5C 06 00 00 ?? 88 2B 49 8E E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 84 02 00 00 48 8B ?? 5C 06 00 00 ?? EF F0 A1 3A E8 ?? ?? ?? ?? }
		$commands_table = { 0B 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 64 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 15 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 10 10 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 0C 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? [0-12] 0F 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 14 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 01 20 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 03 20 00 00 ?? ?? ?? ?? ?? ?? ?? ?? C4 09 00 00 ?? ?? ?? ?? ?? ?? ?? ?? CE 09 00 00 ?? ?? ?? ?? ?? ?? ?? ?? D8 09 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 34 08 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 16 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 18 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 1A 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 28 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 5C 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? }
		$hashes_0 = { F6 99 5A 2E }
		$hashes_1 = { DA 81 B3 C0 }
		$hashes_2 = { D7 71 BA 70 }
		$hashes_3 = { 88 2B 49 8E }
		$hashes_4 = { EF F0 A1 3A }
		$hashes_5 = { F5 39 34 7C }
		$hashes_6 = { 2A 92 12 D8 }
		$hashes_7 = { 8D F1 4F 84 }
		$hashes_8 = { 5B BC CE 73 }
		$hashes_9 = { 59 24 93 B8 }
		$hashes_10 = { 02 9E D0 C2 }
		$hashes_11 = { E5 36 26 AE }
		$hashes_12 = { 5C 3C B4 F3 }
		$hashes_13 = { 2F 87 D8 1C }
		$hashes_14 = { D7 53 22 AC }

	condition:
		$core or ($commands_table and all of ($hashes*))
}