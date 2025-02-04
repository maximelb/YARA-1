rule ARKBIRD_SOLG_MAL_Nglite_Nov_2021_2___FILE
{
	meta:
		description = "Detect NGLite backdoor (version B)"
		author = "Arkbird_SOLG"
		id = "e18f2891-366b-5cff-a17e-63523bfd9cee"
		date = "2021-11-08"
		modified = "2021-11-09"
		reference = "https://unit42.paloaltonetworks.com/manageengine-godzilla-nglite-kdcsponge/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-11-08/NGLite/MAL_NGLite_Nov_2021_2.yara#L1-L19"
		license_url = "N/A"
		logic_hash = "4d44d208010ca17f47f597f7d9eb5ee39d91a2d9077218a173ef0015699dc296"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "3f868ac52916ebb6f6186ac20b20903f63bc8e9c460e2418f2b032a207d8f21d"
		hash2 = "805b92787ca7833eef5e61e2df1310e4b6544955e812e60b5f834f904623fd9f"
		tlp = "white"
		adversary = "-"

	strings:
		$s1 = { 8b 05 64 ?? bf 00 8d 0d e0 ?? c6 00 89 04 24 89 4c 24 04 c7 44 24 08 08 02 00 00 e8 d0 1d 00 00 8b 44 24 0c 85 c0 74 2e 3d 08 02 00 00 77 27 8d 1d e0 ?? c6 00 c6 04 03 5c 40 89 05 24 ?? c6 00 e9 0b ff ff ff 31 c0 e8 44 9f 02 00 ba 09 02 00 00 e8 6a 9f 02 00 8d 05 ?? 7b 8a 00 89 04 24 c7 44 24 04 24 00 00 00 e8 a4 3b 00 00 31 c0 e8 1d 9f 02 00 90 e8 57 86 02 }
		$s2 = { 83 ec 40 c7 44 24 18 00 00 00 00 c7 44 24 14 00 00 00 00 8b 05 70 ?? bf 00 89 04 24 c7 44 24 04 ff ff ff ff 8d 44 24 18 89 44 24 08 8d 44 24 14 89 44 24 0c e8 21 15 00 00 8b 44 24 10 85 c0 74 32 31 c0 31 c9 eb 03 40 89 d1 83 f8 20 7d 20 19 d2 89 cb 89 c1 bd 01 00 00 00 d3 e5 21 d5 23 6c 24 18 85 ed 74 05 8d 53 01 eb dc 89 da eb d8 85 c9 75 2d 8d 7c 24 1c 31 c0 e8 63 98 02 00 8b 0d 60 ?? bf 00 89 0c 24 8d 4c 24 1c 89 4c 24 04 e8 46 14 00 00 8b 4c 24 30 89 4c 24 44 83 c4 40 c3 89 4c 24 44 83 c4 40 c3 e8 4d 7d 02 00 e9 38 }
		$s3 = { 0f b6 2c 13 95 80 f8 80 95 72 f0 c7 44 24 20 00 00 00 00 8b 0d 7c ?? bf 00 89 0c 24 89 44 24 04 8d 4c 24 20 89 4c 24 08 e8 77 0b 00 00 8b 44 24 0c 85 c0 75 4a c7 44 24 1c 00 00 00 00 8b 05 20 ?? bf 00 89 04 24 8b 44 24 24 89 44 24 04 8b 44 24 30 89 44 24 08 8b 44 24 34 89 44 24 0c 8d 44 24 1c 89 44 24 10 c7 44 24 14 00 00 00 00 e8 f1 0b 00 00 8b 44 24 1c 89 44 24 38 83 c4 28 c3 8b 44 24 24 89 04 24 8b 44 24 30 89 44 24 04 8b 44 24 34 89 44 24 08 e8 59 00 00 00 8b 44 24 }
		$s4 = { 83 ec 50 c7 44 24 24 00 00 00 00 8b 05 88 ?? bf 00 89 04 24 c7 44 24 04 ff ff ff ff c7 44 24 08 fe ff ff ff c7 44 24 0c ff ff ff ff 8d 44 24 24 89 44 24 10 c7 44 24 14 00 00 00 00 c7 44 24 18 00 00 00 00 c7 44 24 1c 02 00 00 00 e8 09 04 00 00 64 8b 05 14 00 00 00 8b 80 00 00 00 00 8b 40 18 84 00 05 68 01 00 00 89 04 24 8b 44 24 24 89 44 24 04 e8 d2 86 fd ff 8d 7c 24 34 31 c0 e8 60 86 02 00 8b 05 30 ?? bf 00 89 04 24 8d 44 24 34 89 44 24 04 8d 44 24 34 89 44 24 08 c7 44 24 0c 1c 00 00 00 e8 b1 02 00 00 8b 44 24 }
		$s5 = { 8b 05 94 ?? bf 00 89 04 24 c7 44 24 04 00 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00 e8 ed 05 00 00 8b 44 24 14 8b 4c 24 1c 89 81 b4 01 00 00 85 c0 74 7e 8b 05 94 ?? bf 00 89 04 24 c7 44 24 04 00 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00 e8 ad 05 00 00 8b 44 24 14 8b 4c 24 1c 89 81 b8 01 00 00 85 c0 74 04 83 c4 18 c3 8d 05 ?? ?? 8b 00 89 04 24 e8 c9 6c 02 00 8b 05 98 ?? bf 00 8b 4c 24 1c 8b 91 b4 01 00 00 89 04 24 89 54 24 04 e8 ad 04 00 00 8b 44 24 1c c7 80 b4 01 }

	condition:
		uint16(0)==0x5a4d and filesize >40KB and 4 of ($s*)
}