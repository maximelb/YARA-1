rule ARKBIRD_SOLG_RAN_Decaf_Nov_2021_1___FILE
{
	meta:
		description = "Detect Decaf ransomware (unpacked UPX)"
		author = "Arkbird_SOLG"
		id = "d19b2d31-a6c5-5033-ba43-4e9ccabc37bb"
		date = "2021-11-01"
		modified = "2021-11-02"
		reference = "https://blog.morphisec.com/decaf-ransomware-a-new-golang-threat-makes-its-appearance"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-11-01/Decaf/RAN_Decaf_Nov_2021_1.yara#L1-L19"
		license_url = "N/A"
		logic_hash = "5cea33d710d252b39bcd8ae227f52d10897b7fe58b1ff5226a1cb8cc094d600c"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "088b4715bbe986deac972d551b88f178d43b191f5a71fbd4db3fb0810a233500"
		hash2 = "5da2a2ebe9959e6ac21683a8950055309eb34544962c02ed564e0deaf83c9477"
		tlp = "white"
		adversary = "-"

	strings:
		$s1 = { 48 8b 05 [3] 00 48 8b 0d [3] 00 48 8d 54 24 ?? 8b 5c 24 ?? 48 8d 74 24 ?? 48 89 0c 24 48 89 44 24 08 48 89 54 24 10 48 89 5c 24 18 48 89 74 24 20 89 f8 48 89 44 24 28 48 c7 44 24 30 00 00 00 00 e8 [2] 00 00 45 0f 57 ff 65 4c 8b 34 25 28 00 00 00 4d 8b b6 00 00 00 00 48 83 7c 24 38 00 74 ?? 48 8b 54 24 ?? c6 82 e5 00 00 00 00 48 8b 54 24 ?? 31 c0 }
		$s2 = { 48 8b 05 [3] 00 48 8b 0d [3] 00 48 89 0c 24 48 89 44 24 08 44 0f 11 7c 24 10 48 c7 44 24 20 00 00 00 00 e8 [2] 00 00 45 0f 57 ff 65 4c 8b 34 25 28 00 00 00 4d 8b b6 00 00 00 00 48 83 7c 24 28 00 74 0a 48 8b 6c 24 ?? 48 83 c4 ?? c3 e8 [3] 00 45 0f 57 ff 65 4c 8b 34 25 28 00 00 00 4d 8b b6 00 00 00 00 }
		$s3 = { 48 83 ec 48 48 89 6c 24 40 48 8d 6c 24 40 48 89 44 24 50 48 89 5c 24 58 48 83 3d [3] 00 00 75 73 48 8b 05 45 [2] 00 48 8d 0d 66 [2] 00 48 89 04 24 48 89 4c 24 08 48 c7 44 24 10 04 01 00 00 e8 [2] 00 00 45 0f 57 ff 65 4c 8b 34 25 28 00 00 00 4d 8b b6 00 00 00 00 48 8b 44 24 18 48 85 c0 0f 84 6a 01 00 00 48 3d 04 01 00 00 0f 87 5e 01 00 00 48 8d 1d 1a [2] 00 c6 04 03 5c 4c 8d 40 01 4c 89 05 [3] 00 48 8b 44 24 50 48 8b 5c }
		$s4 = { 48 89 44 24 40 c7 44 24 3c 00 00 00 00 48 8b 0d [3] 00 48 8d 54 24 3c 48 89 0c 24 48 89 44 24 08 48 89 54 24 10 e8 [2] 00 00 45 0f 57 ff 65 4c 8b 34 25 28 00 00 00 4d 8b b6 00 00 00 00 48 83 7c 24 18 00 75 10 48 8b 44 24 40 8b 4c 24 68 48 8b 5c 24 60 eb 1d 48 8b 44 24 40 48 8b 5c 24 60 8b 4c 24 68 e8 8f 00 00 00 48 8b 6c 24 48 48 83 c4 50 c3 c7 44 24 38 00 00 00 00 48 8b 15 [3] 00 48 8d 74 24 38 48 89 14 24 48 89 44 24 08 48 89 5c 24 10 48 63 c1 48 89 44 24 18 48 89 74 24 20 48 c7 44 24 28 00 00 00 00 e8 }
		$s5 = { 2d 2d 2d 2d 2d 42 45 47 49 4e 20 52 53 41 20 50 55 42 4c 49 43 20 4b 45 59 2d 2d 2d 2d 2d 0a 4d 49 49 42 43 67 4b 43 41 51 45 41 }

	condition:
		uint16(0)==0x5a4d and filesize >400KB and 4 of them
}