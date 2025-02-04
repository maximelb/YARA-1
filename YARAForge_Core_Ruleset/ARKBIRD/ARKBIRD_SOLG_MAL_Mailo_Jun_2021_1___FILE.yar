rule ARKBIRD_SOLG_MAL_Mailo_Jun_2021_1___FILE
{
	meta:
		description = "Detect the Mach-O malware"
		author = "Arkbird_SOLG"
		id = "4c975200-fce4-5a2a-b565-6d397c4e0b1c"
		date = "2021-06-09"
		modified = "2021-06-21"
		reference = "https://labs.sentinelone.com/thundercats-hack-the-fsb-your-taxes-didnt-pay-for-this-op/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-06-19/MAIL-O/MAL_MailO_Jun_2021_1.yara#L1-L19"
		license_url = "N/A"
		logic_hash = "165c5fd90039c14ef1fa1e80bb7f14761e991b09560c5f1da2ddf9a0eadee623"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "3a77f108e32b34e184f9ade66292cd73abbd297b4829ba63a973a400cc7f3f9f"
		hash2 = "603881f4c80e9910ab22f39717e8b296910bff08cd0f25f78d5bff1ae0dce5d7"
		tlp = "White"
		adversary = "TA428"

	strings:
		$seq1 = { 48 8b ce e8 9e 0c f9 ff 48 8b 5c 24 20 48 8b 4c 24 28 49 8b d7 41 ff c5 ff 15 20 72 08 00 4c 8b f8 48 85 c0 0f 85 4c ff ff ff 48 8b b4 24 88 00 00 00 48 8b 4c 24 28 33 d2 ff 15 f7 71 08 00 4c 8b ac 24 90 00 00 00 4d 85 e4 0f 84 7f 01 00 00 48 8b ac 24 80 00 00 00 4d 8b c4 48 8b cd 48 8b d6 ff 53 48 49 8b cc 8b f0 e8 88 2c f8 ff 4c 8b bc 24 98 00 00 00 85 c0 0f 8e fb 00 00 00 0f 1f 84 00 00 00 00 00 41 8b d6 49 8b cc e8 95 2e f8 ff 48 8b f8 44 3b f6 75 75 49 89 07 e9 c4 00 00 00 48 8b 5c 24 20 45 33 c0 48 8b ce 41 8d 50 01 e8 a1 4b f9 ff 85 c0 0f 84 43 ff ff ff 49 8b d7 48 8b cb e8 ce e7 ff ff 48 8b d8 48 85 c0 0f 84 2c ff ff ff 49 8b cf ff 15 71 71 08 00 8b 15 ff e0 12 00 4c 8b c3 48 8b ce 48 89 03 e8 45 0c f9 ff 4d 85 e4 75 08 e8 2b 2b f8 ff 4c 8b e0 48 8b d6 49 8b cc e8 cd 2c f8 ff e9 fa fe ff ff 8b 15 ce e0 12 00 48 8b cf e8 ca 0b f9 ff 48 8b d8 48 85 c0 74 39 48 8b 48 10 ff 15 d8 70 08 00 48 8b 4b 08 33 d2 ff 15 d4 70 08 00 48 8b 0b 48 85 c9 74 06 ff 15 0e 71 08 00 41 b8 3a 06 00 00 48 8d 15 b1 71 0d 00 }
		$seq2 = { 4c 8d 84 24 d0 00 00 00 4c 89 b4 24 90 01 00 00 48 8d 15 d8 a2 17 00 48 8b cd e8 50 e1 ff ff 8b 44 24 40 83 f8 02 74 05 83 f8 17 75 0c 83 7c 24 44 01 75 05 41 b6 01 eb 03 45 32 f6 48 8b 5c 24 28 45 84 f6 74 14 f6 85 74 0e 00 00 08 74 0b 48 8b d3 48 8b ce e8 15 03 00 00 48 8b cb e8 5d f4 ff ff 45 84 f6 74 17 f7 85 74 0e 00 00 00 10 00 00 74 0b 48 8b d3 48 8b cd e8 d1 01 00 00 48 83 bd 38 07 00 00 00 74 33 b2 01 48 8b cd e8 1d f1 fe ff 48 8b 8d 40 07 00 00 45 33 c0 48 8b d3 ff 95 38 07 00 00 33 d2 48 8b cd 44 8b f0 e8 fd f0 fe ff 41 83 fe 02 75 51 41 b4 01 8b 44 24 40 83 f8 02 74 05 83 f8 17 75 5a 48 8d 4c 24 50 e8 ac 81 02 00 44 8b 44 24 40 44 8b c8 48 8b d3 48 8b ce e8 d9 f8 ff ff 8b f8 85 c0 74 37 48 8b d3 48 8b ce e8 68 eb ff ff b8 07 00 00 00 83 ff 01 0f 44 f8 }
		$seq3 = { 48 8b d0 48 8d 4d 80 41 ff d4 48 8b cb ff 15 f2 fa 1e 00 48 8d 95 e0 00 00 00 48 8d 4d 80 41 ff d7 f6 47 3c 02 48 8d 8d 90 00 00 00 48 0f 44 4c 24 50 e8 f6 04 00 00 4c 8b f0 48 85 c0 0f 84 05 fe ff ff 48 8b 47 28 49 8b d6 4c 8b 0f 4c 8b 47 10 48 85 c0 74 53 48 8d 8d e0 00 00 00 48 89 4c 24 40 48 8d 0d 94 90 15 00 48 89 44 24 38 8b 47 38 89 44 24 30 48 8b 47 08 48 89 44 24 28 48 8b 44 24 58 48 89 44 24 20 e8 e0 42 fc ff 48 8b 4f 28 48 8d 15 b9 8e 15 00 48 8b d8 e8 3d 7a fd ff 85 c0 74 2a ff 47 38 eb 25 48 8d 85 e0 00 00 00 48 89 44 24 28 48 8d 0d a1 90 15 00 48 8b 44 24 58 48 89 44 24 20 e8 a2 42 fc ff 48 8b d8 49 8b ce ff 15 2e fa 1e 00 48 85 db 0f 84 68 fd ff ff 4c 8b 47 20 4d 85 c0 74 27 48 8b d3 48 8d 0d aa 90 15 00 e8 75 42 fc ff 48 8b cb 4c 8b f0 ff 15 01 fa 1e 00 4d 85 f6 0f 84 3b fd ff ff 49 8b de 4c 8b 47 30 4d 85 c0 74 27 48 8b d3 48 8d 0d 8a 90 15 00 e8 45 42 fc ff 48 8b cb 4c 8b f0 ff 15 d1 f9 1e 00 4d 85 f6 0f 84 0b fd ff ff 49 8b de f6 47 3c 02 74 27 48 8b d3 48 8d 0d 75 90 15 00 e8 18 42 fc ff 48 8b cb 48 8b f8 ff 15 a4 f9 1e 00 48 }
		$seq4 = { 48 81 ec 08 03 00 00 48 8b 05 e2 61 23 00 48 33 c4 48 89 84 24 f0 02 00 00 33 d2 48 8d 8c 24 e0 00 00 00 41 b8 08 02 00 00 e8 c2 f5 16 00 41 b8 04 01 00 00 48 8d 94 24 e0 00 00 00 48 8d 0d c5 94 21 00 ff 15 07 ee 18 00 48 8d 8c 24 e0 00 00 00 ff 15 d1 ef 18 00 85 c0 74 63 33 d2 48 8d 4c 24 70 44 8d 42 68 e8 85 f5 16 00 b8 05 00 00 00 c7 44 24 70 68 00 00 00 66 89 84 24 b0 00 00 00 48 8d 8c 24 e0 00 00 00 48 8d 44 24 50 45 33 c9 48 89 44 24 48 45 33 c0 48 8d 44 24 70 33 d2 48 89 44 24 40 33 c0 48 89 44 24 38 48 89 44 24 30 89 44 24 28 89 44 24 20 ff 15 52 ed 18 00 48 8b 8c 24 f0 02 00 00 48 33 cc e8 c2 cf 16 00 48 }
		$seq5 = { 48 89 74 24 48 48 8d 0d 99 5e 18 00 4c 89 74 24 50 48 8b d5 4c 89 7c 24 58 e8 5f 13 17 00 4c 8d b7 0c 08 00 00 49 63 06 85 c0 0f 84 b0 00 00 00 48 8b c8 48 c1 e1 03 ff 15 a8 5f 22 00 48 8b f0 48 85 c0 0f 84 04 01 00 00 45 33 ff ba 00 01 00 00 41 8b df 90 48 8b 07 48 85 c0 74 16 4c 39 78 28 74 08 8b cb ff c3 48 89 04 ce 48 8b 00 48 85 c0 75 ea 48 83 c7 08 48 83 ea 01 75 d8 49 63 16 4c 8d 0d ce 01 00 00 41 b8 08 00 00 00 48 8b ce e8 c0 14 17 00 85 db 74 3e 4c 8b f6 49 8b 0e e8 c1 03 00 00 48 8b f8 48 8b cd 48 85 c0 0f 84 85 00 00 00 4c 8b c0 48 8d 15 58 5a 18 00 e8 33 a8 ff ff 48 8b cf ff 15 22 5f 22 00 41 ff c7 49 83 c6 08 44 }

	condition:
		uint16(0)==0x5a4d and filesize >300KB and 4 of ($seq*)
}