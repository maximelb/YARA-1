rule ARKBIRD_SOLG_RAN_ELF_Qnapcrypt_Aug_2021_1___FILE
{
	meta:
		description = "Detect QNAPCrypt ransomware (x86 version)"
		author = "Arkbird_SOLG"
		id = "fcdec43a-de70-57a2-9527-263685acc820"
		date = "2021-08-11"
		modified = "2021-08-12"
		reference = "https://bazaar.abuse.ch/browse/tag/QNAPCrypt/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-08-11/QNAPCrypt/RAN_ELF_QNAPCrypt_Aug_2021_1.yara#L1-L29"
		license_url = "N/A"
		logic_hash = "4dbe5241b9f1b68a15193f3d5c7b0b5fac80208c16917b6e543ce407301f1dcf"
		score = 75
		quality = 71
		tags = "FILE"
		hash1 = "551e03e17d1df9bd5b712bec7763578c01e7bffe9b93db246e36ec0a174f7467"
		hash2 = "670250a169ba548c07a5066a70087e83bbc7fd468ef46199d76f97f9e7f72f36"
		hash3 = "6df0897d4eb0826c47850968708143ecb9b58a0f3453caa615c0f62396ef816b"
		hash4 = "fedcce505a5e307c1d116d52b3122f6484b3d25fb3c4d666fe7af087cfe85349"
		tlp = "white"
		adversary = "-"

	strings:
		$s1 = { 2d 00 20 00 20 00 00 00 80 00 80 08 00 00 00 00 00 00 2d 00 2d 00 2d 00 2d 00 2d 00 2d 00 2d 00 2d 00 2d 00 25 00 05 }
		$s2 = { 2d 2d 2d 2d 2d 45 4e 44 20 00 00 00 00 00 00 0a 2d 2d 2d 2d 2d 42 45 47 49 4e 20 }
		$s3 = { 52 65 71 75 69 72 65 64 55 73 65 72 2d 41 67 65 6e 74 3a 20 25 73 0d 0a 57 77 77 2d 41 75 74 68 65 6e 74 69 63 61 74 65 5a 61 6e 61 62 61 7a 61 72 5f 53 71 75 61 72 65 0a 72 75 6e 74 69 6d 65 20 73 74 61 63 6b 3a }
		$s4 = { 34 10 90 e5 80 20 9f e5 04 20 8d e5 08 10 8d e5 c8 10 9f e5 0c 10 8d e5 0a 30 a0 e3 10 30 8d e5 53 4e f8 eb 14 00 9d e5 00 10 90 e5 04 00 90 e5 00 00 50 e3 0c 00 00 da 04 00 91 e5 00 10 91 e5 04 10 8d e5 08 00 8d e5 94 00 9f e5 0c 00 8d e5 05 00 a0 e3 10 00 8d e5 15 e2 ff eb 14 00 dd e5 01 10 20 e2 84 00 9d e5 09 fe ff ea 00 00 a0 e3 00 10 a0 e3 f1 ff ff ea 0e 30 a0 e1 56 76 f9 eb fa }
		$s5 = { 89 7c 24 2c 83 fe 20 19 db 89 f1 bf 01 00 00 00 d3 e7 21 df 89 fb 83 c7 ff 89 7c 24 24 83 c1 e0 89 4c 24 3c 83 f9 20 19 f6 f7 d9 89 4c 24 38 83 f9 20 19 ff 8b 4c 24 3c ba 01 00 00 00 d3 e2 21 f2 8b 4c 24 38 be 01 00 00 00 d3 ee 21 fe 09 d6 83 c3 ff 83 d6 ff 89 74 24 34 8b 54 24 44 8b 5c 24 2c 8b 7c 24 40 8b 4c 24 28 89 44 24 48 31 c0 89 44 24 30 31 c0 89 44 24 20 31 c0 89 44 24 1c }
		$s6 = { 65 8b 0d 00 00 00 00 8b 89 fc ff ff ff 3b 61 08 0f 86 44 03 00 00 83 ec 58 c7 44 24 20 00 00 00 00 c7 44 24 24 00 00 00 00 8d 05 60 c3 27 08 89 44 24 20 8d 0d 28 af 31 08 89 4c 24 24 8b 0d 4c 35 4c 08 8d 15 50 e8 31 08 89 14 24 89 4c 24 04 8d 4c 24 20 89 4c 24 08 c7 44 24 0c 01 00 00 00 c7 44 24 10 01 00 00 00 e8 63 b9 ea ff 90 c7 05 94 38 4c 08 06 00 00 00 8b 05 d0 50 4d 08 85 c0 0f 85 b3 02 00 00 8d 05 1a d3 2b 08 89 05 90 38 4c 08 8b 05 a4 34 4c 08 89 04 24 8d 05 10 02 32 08 89 44 24 04 8d 05 90 38 4c 08 89 44 24 08 }
		$x1 = { e8 [2] e4 ff 8b 44 24 08 89 44 24 28 8b 4c 24 0c 89 4c 24 2c 31 d2 31 db eb 18 8b 6c 24 40 83 c5 01 8b 54 24 44 83 d2 00 8b 44 24 28 8b 4c 24 2c 89 eb 39 ca 87 dd 0f ?? c3 87 dd }
		$x2 = { 8b ?? 20 89 ?? 24 ff d0 8b 44 24 ?? 89 44 24 ?? 8b 4c 24 ?? 89 4c 24 ?? c7 44 24 68 65 43 68 30 c7 44 24 6c 72 61 69 78 89 ?? 24 89 ?? 24 04 e8 [2] e4 ff }
		$x3 = { 74 11 90 e5 70 21 90 e5 68 31 90 e5 6c 41 90 e5 04 30 8d e5 08 40 8d e5 0c 20 8d e5 10 10 8d e5 91 5c fe eb 1c 00 9d e5 18 10 9d e5 14 30 9d e5 78 20 9d e5 40 10 82 e5 44 00 82 e5 ac b6 9f e5 00 00 9b e5 00 00 50 e3 27 06 00 1a 3c 30 82 e5 7c 02 9d e5 20 10 80 e2 1b 2e 8d e2 f9 0d fc eb 04 20 8d e2 1b 1e 8d e2 f6 0d fc eb 9e f4 ff eb 34 00 9d e5 78 30 9d e5 48 00 83 e5 7c 02 9d e5 d4 40 90 e5 d0 50 90 e5 cc 60 90 e5 04 60 8d e5 08 50 8d e5 0c 40 8d e5 fe f5 ff eb 10 00 9d e5 78 30 9d e5 4c 00 83 e5 04 00 8d e5 7c 02 9d e5 c0 40 80 e2 08 40 8d e5 8c fa ff eb 0c 00 9d e5 18 30 9d e5 10 40 9d e5 14 50 9d e5 78 60 9d e5 50 00 86 e5 14 b6 9f e5 00 00 9b e5 00 }
		$x4 = { d0 00 8d e5 05 00 53 e3 a0 05 00 1a 00 30 d2 e5 68 00 53 e3 9a 05 00 1a 01 30 d2 e5 74 00 53 e3 94 05 00 1a 02 30 d2 e5 74 00 53 e3 8e 05 00 1a 03 30 d2 e5 70 00 53 e3 88 05 00 1a 04 20 d2 e5 73 00 52 e3 82 05 00 1a 9c 22 9d e5 54 30 92 e5 00 00 53 e3 72 04 00 0a 00 00 51 e3 6a 04 00 1a b4 12 9d e5 b8 32 9d e5 54 70 92 e5 58 07 9f e5 }
		$x5 = { 55 6e 61 62 6c 65 20 74 6f 20 63 72 65 61 74 65 20 70 69 64 20 66 69 6c 65 20 3a 20 25 76 }
		$x6 = { 53 61 76 65 20 63 75 72 72 20 50 49 44 20 25 64 }

	condition:
		uint32(0)==0x464C457F and filesize >25KB and 3 of ($s*) and 2 of ($x*)
}