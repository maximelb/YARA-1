rule ARKBIRD_SOLG_MAL_Sidoh_Stealer_Aug_2021_1___FILE
{
	meta:
		description = "Detect Sidoh Stealer used by RYUK group"
		author = "Arkbird_SOLG"
		id = "b4661304-6dfa-5c33-95f2-8694271b9e58"
		date = "2021-08-31"
		modified = "2021-09-01"
		reference = "https://www.crowdstrike.com/blog/sidoh-wizard-spiders-mysterious-exfiltration-tool/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-08-31/Sidoh/MAL_Sidoh_Stealer_Aug_2021_1.yara#L1-L22"
		license_url = "N/A"
		logic_hash = "baeea14c6be42d64d3ca68298bf6ced34c9587fcda91471945cfc7ed1fe267bd"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "a1ce52437252001b56c9ccd2d2da46240dc38db8074a5ed39a396e8c8e387fc2"
		hash2 = "c64269a64b64b20108df89c4f1a415936c9d9923f8761d0667aa8492aa057acb"
		hash3 = "e6762cb7d09cd90d5469e3c3bfc3b47979cd67aa06c06e893015a87b0348c32c"
		hash4 = "cc4a0b4080844e20fb9535679f7b09a3e2449729ce1815d1e5a64272b0225465"
		tlp = "White"
		adversary = "RYUK (RAAS)"

	strings:
		$s1 = { 68 88 13 00 00 ff 15 ?? 30 41 00 ff 76 04 ff 15 ?? 30 41 00 68 10 27 00 00 53 68 ?? f6 41 00 e8 ?? ?? 00 00 83 c4 0c ff 15 ?? 30 41 00 8b f8 8b f3 8b d7 8b ce d3 ea f6 c2 01 74 34 8d 46 41 6a 3a 66 a3 ?? f6 41 00 58 66 a3 ?? f6 41 00 33 c0 68 ?? f6 41 00 66 a3 ?? f6 41 00 ff 15 ?? 30 41 00 83 f8 05 74 0a b9 ?? f6 41 00 e8 ?? ?? 00 00 46 83 fe 1a 7c bb 68 10 27 00 00 53 68 ?? f6 41 00 e8 ?? ?? 00 00 8b 3d ?? 30 41 00 8d 44 24 28 83 c4 0c 89 5c 24 1c 6a 01 50 53 ff d7 8b 35 ?? 30 41 00 6a 04 68 00 10 00 00 ff 74 24 24 53 ff d6 8b d8 8d 44 24 1c 6a 01 50 53 89 5c 24 30 ff d7 6b 0b 18 6a 04 68 00 10 00 00 51 33 c9 51 ff d6 68 00 40 00 00 6a 40 89 44 24 38 ff 15 ?? 30 41 00 33 f6 89 44 24 2c 89 74 24 }
		$s2 = { 8b ca c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 33 f6 56 56 56 6a 01 56 ff 15 ?? 31 41 00 a3 ?? ?? 42 00 8b fe 85 c0 74 4e 56 68 00 00 00 08 6a 01 68 ?? ?? 41 00 68 ?? ec 41 00 6a 15 ff 75 f8 50 ff 15 ?? 31 41 00 8b f8 85 ff 74 42 56 6a 02 8d 85 f0 fc ff ff 50 53 57 ff 15 ?? 31 41 00 85 c0 75 0f ff 15 ?? 30 41 00 8b d8 a1 ?? ?? 42 00 eb 08 a1 ?? ?? 42 00 33 db 43 8b 35 ?? 31 41 00 50 ff d6 57 ff d6 8b c3 5f 5e 5b 8b e5 }
		$s3 = { 55 8b ec 83 ec 58 53 8b 1d ?? 30 41 00 56 57 6a 04 68 00 10 00 00 6a 02 6a 00 89 55 f0 8b f1 ff d3 8b f8 85 ff 75 08 83 c8 ff e9 0f 01 00 00 56 68 ?? ?? 41 00 57 e8 93 ff ff ff 83 65 f8 00 8d 45 f8 50 6a 00 57 ff 15 ?? 31 41 00 83 c4 18 8b f0 83 7d f8 00 89 75 f4 74 04 6a fd eb 33 83 65 ac 00 8d 45 ac 50 ff 15 ?? 31 41 00 8d 45 ac 50 6a 00 68 ?? ?? 41 00 56 ff 15 ?? 31 41 00 83 c4 14 83 7d c8 00 77 10 72 06 }
		$s4 = { 6a 04 68 00 10 00 00 ff 75 c4 6a 00 ff d3 8b d8 85 db 75 1a 68 00 80 00 00 50 57 ff 15 ?? 30 41 00 56 ff 15 ?? 31 41 00 59 6a fb 58 eb 79 6a 00 68 ?? ?? 41 00 56 ff 15 ?? 31 41 00 ff 75 c8 8b f0 ff 75 c4 53 56 ff 15 ?? 31 41 00 56 ff 15 ?? 31 41 00 ff 75 f4 ff 15 ?? 31 41 00 ff 75 08 8b 55 c4 8b cb ff 75 f0 e8 3b 02 00 00 8b f0 83 c4 2c 85 f6 75 14 83 7d 08 05 75 0e 8b 55 c4 51 8b cb e8 b3 09 00 00 59 8b f0 68 00 80 00 00 6a 00 53 ff 15 ?? 30 41 00 68 00 80 00 00 6a 00 57 ff 15 ?? 30 41 00 8b c6 5f 5e 5b 8b e5 }

	condition:
		uint16(0)==0x5A4D and filesize >20KB and all of ($s*)
}