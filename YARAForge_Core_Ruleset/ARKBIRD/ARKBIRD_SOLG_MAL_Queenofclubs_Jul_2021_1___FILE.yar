rule ARKBIRD_SOLG_MAL_Queenofclubs_Jul_2021_1___FILE
{
	meta:
		description = "Detect QueenOfClubs malware"
		author = "Arkbird_SOLG"
		id = "d78df760-5753-528c-b03d-7bb91ec658c0"
		date = "2021-07-09"
		modified = "2021-07-12"
		reference = "https://securelist.com/iamtheking-and-the-slothfulmedia-malware-family/99000/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-07-11/IAmTheKing/MAL_QueenOfClubs_Jul_2021_1.yara#L1-L21"
		license_url = "N/A"
		logic_hash = "c6fe9dd24098ef3c281d9e6727613499988c88b9d2011af77390e0ce358bebf4"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "b0a1da4fc5526365df495094f65660d88487ce5e60192e5fb4075e815f9481d3"
		tlp = "White"
		adversary = "IAmTheKing"

	strings:
		$s1 = { 66 00 6f 00 72 00 28 00 3b 00 3b 00 29 00 7b 00 24 00 53 00 3d 00 47 00 65 00 74 00 2d 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 20 00 22 00 25 00 73 00 22 00 3b 00 49 00 46 00 28 00 24 00 53 00 29 00 7b 00 22 00 22 00 20 00 3e 00 20 00 22 00 25 00 73 00 22 00 3b 00 24 00 74 00 3d 00 69 00 65 00 78 00 20 00 24 00 53 00 20 00 32 00 3e 00 22 00 25 00 73 00 22 00 3b 00 24 00 74 00 3d 00 24 00 74 00 2b 00 27 00 20 00 27 00 3b 00 65 00 63 00 68 00 6f 00 20 00 24 00 74 00 20 00 3e 00 3e 00 22 00 25 00 73 00 22 00 3b 00 7d 00 73 00 6c 00 65 00 65 00 70 00 20 00 2d 00 6d 00 20 00 36 00 30 00 30 00 3b 00 7d }
		$s2 = { 50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6e 00 6f 00 70 00 20 00 2d 00 63 00 20 00 25 00 73 }
		$s3 = { 5c 00 53 00 74 00 72 00 69 00 6e 00 67 00 46 00 69 00 6c 00 65 00 49 00 6e 00 66 00 6f 00 5c 00 25 00 30 00 34 00 78 00 25 00 30 00 34 00 78 00 5c 00 46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e }
		$s4 = { 5c 00 7e 00 74 00 6d 00 70 00 5f 00 [6-20] ( 00 2e 00 6a 00 70 00 67 | 00 2e 00 70 00 73 00 31) }
		$s5 = { c7 45 d8 ac 89 41 00 c7 45 dc 00 00 00 00 6a 01 68 00 00 40 04 8d 55 d8 52 68 c8 89 41 00 68 e0 89 41 00 8b 45 c0 83 c0 08 50 68 ec 89 41 00 8b 4d f4 51 ff 15 78 62 41 00 8b 55 c0 89 42 04 8b 45 c0 83 78 04 00 75 19 8b 4d f0 51 ff 15 74 62 41 00 8b 55 f4 52 ff 15 74 62 41 00 e9 14 ff ff ff 68 3c 04 00 00 e8 b7 70 00 00 83 c4 04 89 45 d0 8b 45 d0 89 45 e0 68 ec 01 00 00 e8 a1 70 00 00 83 c4 04 89 45 cc 8b 4d cc 89 4d d4 8b 55 c0 8b 32 b9 7b 00 00 00 8b 7d d4 f3 a5 6a 01 8b 45 c0 83 c0 1c 50 68 ec 01 00 00 8b 4d d4 51 68 c1 f5 09 00 8b 55 c0 83 c2 20 52 e8 04 ef ff ff }
		$s6 = "http://bot.google.com" fullword ascii
		$s7 = { 25 00 73 00 7c 00 25 00 73 00 7c 00 25 00 73 00 7c 00 25 00 73 00 00 00 25 00 73 00 00 00 00 00 25 00 73 }

	condition:
		uint16(0)==0x5a4d and filesize >35KB and 5 of ($s*)
}