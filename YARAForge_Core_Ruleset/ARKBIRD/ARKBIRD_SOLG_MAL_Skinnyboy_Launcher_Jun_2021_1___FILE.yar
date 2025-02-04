rule ARKBIRD_SOLG_MAL_Skinnyboy_Launcher_Jun_2021_1___FILE
{
	meta:
		description = "Detect the Launcher of SkinnyBoy"
		author = "Arkbird_SOLG"
		id = "4e69cba4-92ef-5ea5-95d8-b22ed77f515c"
		date = "2021-06-05"
		modified = "2021-06-06"
		reference = "https://cluster25.io/wp-content/uploads/2021/05/2021-05_FancyBear.pdf"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-06-06/APT28/MAL_SkinnyBoy_Launcher_Jun_2021_1.yara#L1-L19"
		license_url = "N/A"
		logic_hash = "4d5906832a1bc90552255ada1cc9e3c7cd3e14e4b0cb11b1bf2c11c57bca8ad8"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "2a652721243f29e82bdf57b565208c59937bbb6af4ab51e7b6ba7ed270ea6bce"
		tlp = "White"
		adversary = "APT28"

	strings:
		$s1 = { 55 8b ec 83 e4 f8 81 ec bc 06 00 00 a1 00 e0 40 00 33 c4 89 84 24 b8 06 00 00 53 56 57 33 c0 68 06 02 00 00 50 66 89 84 24 b8 02 00 00 8d 84 24 ba 02 00 00 50 8b f1 e8 64 31 00 00 8b 1d 28 90 40 00 0f 57 c0 83 c4 0c 8d 84 24 9c 02 00 00 50 c7 84 24 a0 02 00 00 79 00 00 00 66 0f d6 84 24 a4 02 00 00 66 0f d6 84 24 ac 02 00 00 c7 84 24 78 02 00 00 57 00 00 00 66 0f d6 84 24 7c 02 00 00 66 0f d6 84 24 84 02 00 00 ff d3 8b d0 33 c9 89 15 38 fb 40 00 85 d2 74 1b 8d 9b 00 00 00 00 66 8b 84 4c 74 02 00 00 66 31 84 4c 9c 02 00 00 41 3b ca 72 eb a1 80 cd 40 00 89 84 24 88 02 00 00 0f b7 05 84 cd 40 00 66 89 84 24 8c 02 00 00 a1 88 cd 40 00 89 84 24 74 02 00 00 0f b7 05 8c cd 40 00 66 89 84 24 78 02 00 00 0f 57 c0 8d 84 24 88 02 00 00 50 66 0f d6 84 24 92 02 00 00 c7 84 24 9a 02 00 00 00 00 00 00 66 c7 84 24 9e 02 00 00 00 00 66 0f d6 84 24 7e 02 00 00 c7 84 24 86 02 00 00 00 00 00 00 66 c7 84 24 8a 02 00 00 00 00 ff d3 8b d0 33 c9 89 15 38 fb 40 00 }
		$s2 = { 66 8b 84 4c 74 02 00 00 66 31 84 4c 88 02 00 00 41 3b ca 72 eb 6a 64 6a 08 ff 15 30 90 40 00 50 ff 15 34 90 40 00 8b 1d 3c 90 40 00 89 44 24 0c 56 8d 84 24 b4 02 00 00 50 ff d3 8b 3d 44 91 40 00 8d 84 24 b0 02 00 00 50 ff d7 68 90 cd 40 00 8d 84 24 b4 02 00 00 50 ff d3 8d 44 24 20 50 8d 84 24 b4 02 00 00 50 ff 15 40 90 40 00 8b f0 8d 84 24 b0 02 00 00 50 89 74 24 14 ff 15 40 91 40 00 8d 84 24 b0 02 00 00 50 ff d7 83 fe ff 0f 84 21 02 00 00 8b 35 2c 90 40 00 8d 9b 00 00 00 00 8d 84 24 9c 02 00 00 50 8d 44 24 50 50 ff d6 85 }
		$s3 = { ff 15 20 90 40 00 8d 44 24 14 50 6a 00 6a 00 68 0c 80 00 00 ff 74 24 28 ff 15 04 90 40 00 ff 15 20 90 40 00 6a 00 56 8d 44 24 54 50 ff 74 24 20 ff 15 14 90 40 00 ff 15 20 90 40 00 6a 00 8d 44 24 20 50 ff 74 24 14 c7 44 24 28 64 00 00 00 6a 02 ff 74 24 24 ff 15 10 90 40 00 ff 74 24 14 ff 15 00 90 40 00 6a 00 ff 74 24 1c ff 15 0c 90 40 00 8b 74 24 1c 8b 4c 24 0c ba 90 ed 40 00 83 ee }
		$s4 = { 0f b7 8c 05 f8 fd ff ff 66 31 8c 05 f8 fe ff ff 0f b7 8c 05 fa fd ff ff 66 31 8c 05 fa fe ff ff 0f b7 8c 05 fc fd ff ff 66 31 8c 05 fc fe ff ff 0f b7 8c 05 fe fd ff ff 66 31 8c 05 fe fe ff ff 83 c0 08 3d 00 01 00 00 72 b6 56 8d 85 f8 fe ff ff 50 8d 85 f0 fb ff ff 68 08 02 00 00 50 e8 ed 04 00 00 6a 44 8d 85 98 fb ff ff 6a 00 50 e8 ed 31 00 00 83 c4 1c 8d 85 e0 fb ff ff 50 8d 85 98 fb ff ff 50 6a 00 6a 00 68 00 00 00 08 6a 00 6a 00 6a 00 8d 85 f0 fb ff ff 50 6a 00 c7 85 98 fb ff ff 44 00 00 00 ff 15 38 90 40 00 8b 4d fc 33 cd 5e e8 b9 04 00 00 8b e5 }
		$s5 = { 55 8b ec 81 ec 6c 04 00 00 a1 00 e0 40 00 33 c5 89 45 fc 56 33 c0 68 06 02 00 00 50 66 89 85 f0 fb ff ff 8d 85 f2 fb ff ff 50 8b f1 e8 8f 33 00 00 68 04 01 00 00 8d 85 f0 fb ff ff 6a 00 50 e8 7c 33 00 00 83 c4 18 56 ff 15 48 91 40 00 85 c0 0f 84 b6 01 00 00 b8 69 00 00 00 68 d2 00 00 00 66 89 85 24 ff ff ff 8d 85 26 ff ff ff 6a 00 50 c7 85 f8 fe ff ff 1f 00 16 00 c7 85 fc fe ff ff 0b 00 22 00 c7 85 00 ff ff ff 78 00 7c 00 c7 85 04 ff ff ff 00 00 55 00 c7 85 08 ff ff ff 5b 00 2e 00 c7 85 0c ff ff ff 3f 00 03 00 c7 85 10 ff ff ff 04 00 04 00 c7 85 14 ff ff ff 0d 00 15 00 c7 85 18 ff ff ff 47 00 44 00 c7 85 1c ff ff ff 47 00 14 00 c7 85 20 ff ff ff 09 00 68 00 e8 dd 32 00 00 f3 0f 7e 05 48 cd 40 00 66 0f d6 85 f8 fd ff ff f3 0f 7e 05 50 cd 40 00 66 0f d6 85 00 fe ff ff f3 0f 7e 05 58 cd 40 00 66 0f d6 85 08 fe ff ff f3 0f 7e 05 60 cd 40 00 66 0f d6 85 10 fe ff ff f3 0f 7e 05 68 cd 40 00 68 d0 00 00 00 66 0f d6 85 18 fe ff ff f3 0f 7e 05 70 cd 40 00 8d 85 28 fe ff ff 6a 00 50 66 0f d6 85 20 fe ff ff e8 6a 32 00 00 83 c4 18 33 }
		$s6 = { 0f b7 8c 05 f8 fd ff ff 66 31 8c 05 f8 fe ff ff 0f b7 8c 05 fa fd ff ff 66 31 8c 05 fa fe ff ff 0f b7 8c 05 fc fd ff ff 66 31 8c 05 fc fe ff ff 0f b7 8c 05 fe fd ff ff 66 31 8c 05 fe fe ff ff 83 c0 08 3d 00 01 00 00 72 b6 56 8d 85 f8 fe ff ff 50 8d 85 f0 fb ff ff 68 08 02 00 00 50 e8 ed 04 00 00 6a 44 8d 85 98 fb ff ff 6a 00 50 e8 ed 31 00 00 83 c4 1c 8d 85 e0 fb ff ff 50 8d 85 98 fb ff ff 50 6a 00 6a 00 68 00 00 00 08 6a 00 6a 00 6a 00 8d 85 f0 fb ff ff 50 6a 00 c7 85 98 fb ff ff 44 00 00 00 ff 15 38 90 40 00 8b 4d fc 33 cd 5e e8 b9 04 00 00 8b e5 }

	condition:
		uint16(0)==0x5a4d and filesize >40KB and 5 of ($s*)
}