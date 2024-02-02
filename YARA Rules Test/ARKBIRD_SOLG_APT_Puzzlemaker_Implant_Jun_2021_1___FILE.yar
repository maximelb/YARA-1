rule ARKBIRD_SOLG_APT_Puzzlemaker_Implant_Jun_2021_1___FILE
{
	meta:
		description = "Detect the implant of the PuzzleMaker group"
		author = "Arkbird_SOLG"
		id = "9387130c-4474-55bf-9736-09494a5e81b8"
		date = "2021-06-10"
		modified = "2021-11-01"
		reference = "https://securelist.com/puzzlemaker-chrome-zero-day-exploit-chain/102771/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-06-09/PuzzleMaker/APT_PuzzleMaker_Implant_Jun_2021_1.yara#L1-L21"
		license_url = "N/A"
		logic_hash = "e54eaaa76b2d370a27a232dee2299266f8b3b82d53da36e35c2a6fcdd7d5b1f7"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "8a17279ba26c8fbe6966ea3300fdefb1adae1b3ed68f76a7fc81413bd8c1a5f6"
		hash2 = "1ee9bb4e8bcabe197399b654dbf940438b120af1c376719ff9bdccf2bb1dc606"
		hash3 = "f2ce2a00de8673f52d37911f3e0752b8dfab751b2a17e719a565b4083455528e"
		tlp = "White"
		adversary = "PuzzleMaker"

	strings:
		$s1 = { 4c 8d 4c 24 5c 49 8b ce 48 8d 95 c0 00 00 00 ff 15 21 01 04 00 85 c0 74 28 4c 8d 4c 24 58 4c 89 64 24 20 41 b8 00 04 00 00 48 8d 95 c0 04 00 00 49 8b cf ff 15 b5 fe 03 00 85 c0 0f 85 25 ff ff ff ff 15 77 fe 03 00 8b }
		$s2 = { 40 55 53 56 41 55 41 57 48 8d ac 24 a0 fe ff ff 48 81 ec 60 02 00 00 48 8b 05 5a 1c 03 00 48 33 c4 48 89 85 30 01 00 00 48 8b 85 b0 01 00 00 4c 8b f9 48 8b b1 b8 00 00 00 4c 8b ad c8 01 00 00 48 83 c6 07 48 89 44 24 60 48 8b 85 d0 01 00 00 48 89 45 98 8b 85 c0 01 00 00 83 c0 fd 48 c1 ee 03 4c 89 4d 80 4c 89 45 88 48 89 55 90 83 f8 06 0f 87 84 03 00 00 48 8d 15 f3 6b fd ff 48 98 8b 8c 82 b0 97 02 00 48 }
		$s3 = { 48 8d 1d 98 3d 02 00 0f 57 c0 48 89 bc 24 58 02 00 00 33 c0 c7 44 24 68 01 00 00 00 0f 11 85 80 00 00 00 4c 8b c6 c7 85 8c 00 00 00 10 27 00 00 48 8d 95 a0 00 00 00 48 89 44 24 70 49 8b c9 48 89 44 24 78 0f 11 45 20 0f 11 45 30 0f 11 45 40 0f 11 45 50 0f 11 45 60 0f 11 45 70 0f 11 85 90 00 00 00 e8 57 58 fe ff 8b f8 85 c0 0f 85 62 02 00 00 49 8b 87 b8 00 00 00 48 8d 4c 24 68 48 8b 54 24 60 48 83 c0 07 48 c1 e8 03 4c 89 a4 24 50 02 00 00 4c 8b a5 b8 01 00 00 4c 3b e0 4c 89 b4 24 48 02 00 00 4d 8b f4 4c 0f 47 f0 4d 8b c6 e8 1b 57 fe ff 8b f8 85 c0 75 54 49 8b 87 b8 00 00 00 4a 8d 14 f5 00 00 00 00 48 }
		$s4 = { 85 ff 0f 85 cd 01 00 00 48 8b 4d 90 48 8d 45 a0 48 89 44 24 50 45 33 c9 48 8d 45 d0 4d 8b c7 48 89 44 24 48 33 d2 4c 89 64 24 40 4c 89 64 24 38 c7 44 24 30 00 00 00 08 c7 44 24 28 01 00 00 00 4c 89 64 24 20 ff 15 62 1c 04 00 85 c0 75 3a ff 15 38 1d 04 00 44 8b c3 48 8b ce 8b d0 8b f8 e8 d1 09 00 00 48 8b 4d 80 ff 15 07 1d 04 00 48 8b 4d 88 ff 15 fd 1c 04 00 48 8b 4d 90 ff 15 f3 1c 04 00 }
		$s5 = { 40 53 55 56 57 41 54 41 55 41 56 41 57 48 81 ec 28 02 00 00 48 8b 05 5d 0a 04 00 48 33 c4 48 89 84 24 10 02 00 00 48 8b ac 24 90 02 00 00 0f 57 c0 4c 8b ac 24 98 02 00 00 33 db 45 32 e4 4c 89 4c 24 58 4c 89 44 24 70 49 8b f9 48 89 6c 24 68 4d 8b c8 4c 89 6c 24 60 4c 8b fa 48 8b f1 44 8b f3 0f 11 84 24 e0 00 00 00 c7 84 24 ec 00 00 00 10 27 00 00 0f 11 84 24 80 00 00 00 0f 11 84 24 90 00 00 00 0f 11 84 24 a0 00 00 00 0f 11 84 24 b0 00 00 00 0f 11 84 24 c0 00 00 00 0f 11 84 24 d0 00 00 00 0f 11 84 24 f0 00 00 00 48 85 ed 75 47 4c 8b 81 b8 00 00 00 48 8d 05 a1 c2 ff ff 48 89 44 24 68 48 8d 8c 24 80 00 00 00 49 83 c0 07 48 8d 84 24 80 00 00 00 49 c1 e8 03 49 8b d1 48 89 44 24 60 e8 87 c2 ff ff 8b f8 85 c0 0f 85 ee 01 00 00 48 8b 7c 24 58 48 8d 56 68 48 8d 4f 18 e8 7b 4a ff ff 85 c0 75 15 48 8d 56 50 48 8b cf e8 6b 4a ff ff 85 c0 75 05 40 b5 }
		$s6 = { 41 b9 01 00 00 00 c7 44 24 20 00 00 00 f0 45 33 c0 48 8d 4c 24 60 33 d2 ff 15 11 06 04 00 85 c0 74 28 48 8b 4c 24 60 4c 8d 85 b0 00 00 00 ba 20 00 00 00 ff 15 ee 05 04 00 48 8b 4c 24 60 33 d2 85 }

	condition:
		uint16(0)==0x5a4d and filesize >80KB and 5 of ($s*)
}