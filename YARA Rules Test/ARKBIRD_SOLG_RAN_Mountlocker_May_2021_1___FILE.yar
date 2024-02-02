rule ARKBIRD_SOLG_RAN_Mountlocker_May_2021_1___FILE
{
	meta:
		description = "Detect the Mountlocker ransomware"
		author = "Arkbird_SOLG"
		id = "0bc0d341-4658-500e-b487-1993e5431560"
		date = "2020-05-12"
		modified = "2021-05-16"
		reference = "Internal Research"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-05-12/Astrolocker/RAN_MountLocker_May_2021_1.yara#L1-L20"
		license_url = "N/A"
		logic_hash = "c0826d4c740b5c46b704b42e002602dd0cda2b6d1bf0ba5431877be8bd600b64"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "0aa8099c5a65062ba4baec8274e1a0650ff36e757a91312e1755fded50a79d47"
		hash2 = "f570d5b17671e6f3e56eae6ad87be3a6bbfac46c677e478618afd9f59bf35963"
		hash3 = "5eae13527d4e39059025c3e56dad966cf67476fe7830090e40c14d0a4046adf0"
		tlp = "White"
		adversary = "MountLocker"

	strings:
		$seq_Sep_2020_1 = { 40 53 48 81 ec f0 02 00 00 b9 e8 03 00 00 ff 15 ec 1a 00 00 bb 68 00 00 00 48 8d 4c 24 70 44 8b c3 33 d2 e8 9c 00 00 00 ba 04 01 00 00 89 5c 24 70 48 8d 8c 24 e0 00 00 00 ff 15 51 1a 00 00 48 8d 15 a2 9c 00 00 48 8d 8c 24 e0 00 00 00 ff 15 64 1a 00 00 48 8d 44 24 50 45 33 c9 48 89 44 24 48 48 8d 94 24 e0 00 00 00 48 8d 44 24 70 45 33 c0 48 89 44 24 40 33 c9 48 83 64 24 38 00 48 83 64 24 30 00 c7 44 24 28 10 00 00 00 83 64 24 20 00 ff 15 c1 19 00 00 8b d8 85 c0 74 16 48 8b 4c 24 58 ff 15 50 1a 00 00 48 8b 4c 24 50 ff 15 45 1a 00 00 8b c3 48 81 c4 f0 02 }
		$seq_Sep_2020_2 = { 68 00 00 00 f0 6a 01 68 a0 51 00 10 57 8d 45 f8 89 5d f4 50 89 7d f8 89 7d fc ff 15 30 50 00 10 85 c0 0f 84 81 00 00 00 8d 45 fc 50 57 57 68 14 01 00 00 68 d0 d0 00 10 ff 75 f8 ff 15 08 50 00 10 8b f0 85 f6 74 26 68 00 01 00 00 8d 45 f4 50 68 60 42 01 10 57 6a 01 57 ff 75 fc ff 15 04 50 00 10 ff 75 fc 8b f0 ff 15 00 50 00 10 57 ff 75 f8 ff 15 0c 50 00 10 }
		$seq_Jan_2021_1 = { 48 21 4d 77 4c 8d 05 [2] 00 00 48 21 4d 6f ?? 8b ?? 48 8d 4d 77 [6-9] c7 44 24 20 00 00 00 f0 ff 15 [2] 00 00 85 c0 0f 84 [2] 00 00 48 8b 4d 77 48 8d 45 6f 48 89 44 24 28 48 8d [3] 00 00 83 64 24 20 00 [2-5] c9 41 b8 14 01 00 00 ff 15 [2] 00 00 8b d8 85 c0 74 3b 48 8b 4d 6f 48 8d 45 67 c7 44 24 30 00 01 00 00 45 33 c9 48 89 44 24 28 ?? 8b ?? 48 8d 05 [2-3] 00 33 d2 48 89 44 24 20 ff 15 [2] 00 00 48 8b 4d 6f 8b d8 ff 15 [2] 00 00 48 8b 4d 77 33 d2 ff 15 [2] 00 00 85 db [4-12] 00 00 48 8d }
		$seq_Jan_2021_2 = { 4c 8d 05 20 47 00 00 41 8b ce 48 8d 15 1e 47 00 00 e8 [2] 00 00 ba 04 01 00 00 48 8d 4c 24 40 ff 15 ?? 43 00 00 85 c0 75 12 b8 5c 00 00 00 c7 44 24 40 43 00 3a 00 66 89 44 24 44 89 6c 24 38 4c 8d 8c 24 78 02 00 00 48 89 6c 24 30 48 8d 4c 24 40 48 89 6c 24 28 45 33 c0 33 d2 48 89 6c 24 20 66 89 6c 24 46 ff 15 6b 44 00 00 44 8b 84 24 78 02 00 00 48 8d 15 e4 45 00 00 85 c0 b9 bd 07 a2 41 44 0f 44 c1 41 8b c8 44 89 84 24 78 02 00 00 c1 c9 09 41 8b c0 89 4c 24 28 45 8b c8 c1 c8 06 48 8d 4c 24 40 41 c1 c9 03 89 44 24 20 ff 15 8b 44 00 00 4c 8d 44 24 40 33 d2 33 c9 ff 15 ?? 42 00 00 48 85 c0 74 1b ff 15 [2] 00 00 3d b7 00 00 00 74 0e bf 01 00 00 00 48 8d 15 fe 45 00 00 eb 09 8b fd 48 8d 15 a3 45 00 00 41 8b }

	condition:
		uint16(0)==0x5a4d and filesize >30KB and 1 of ($seq*)
}