rule ARKBIRD_SOLG_MAL_Keylogger_Jul_2021_1___FILE
{
	meta:
		description = "Detect a keylogger used by IAmTheKing group"
		author = "Arkbird_SOLG"
		id = "186dc5f5-5cc2-551a-a34c-e775085e7f89"
		date = "2021-07-09"
		modified = "2021-07-12"
		reference = "https://securelist.com/iamtheking-and-the-slothfulmedia-malware-family/99000/"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2021-07-11/IAmTheKing/MAL_Keylogger_Jul_2021_1.yara#L1-L22"
		license_url = "N/A"
		logic_hash = "dfdf5892564b93cd1bf564cfe62e37d9477b5ae0bf20e0f9a44ee97b7e3a99f8"
		score = 75
		quality = 71
		tags = "FILE"
		hash1 = "4c6995cb65ffeac1272d296eb3273b9fbca7f4d603312a5085b5c3be96154915"
		hash2 = "79d363a163dfb0088545e66404e0213a9e18d5ee66713d7bc906ed97c46b5ca3"
		tlp = "White"
		adversary = "IAmTheKing"

	strings:
		$s1 = "sonme hting is wrong x" fullword ascii
		$s2 = { 25 73 25 73 25 73 25 73 }
		$s3 = { 0d 0a 5b 44 41 54 41 5d 3a 0d 0a 00 4c 6f 67 2e 74 78 74 }
		$s4 = { 0d 0a 5b 54 49 4d 45 3a 5d 25 64 2f 25 64 2f 25 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 0d 0a 5b 54 49 54 4c 45 3a 5d }
		$s5 = { 25 73 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 }
		$s6 = { 6a 00 56 ff 75 f8 8d 45 e4 50 ff 75 f0 ff 75 f4 ff 75 08 ff 15 c4 80 40 00 8b f0 3b f7 74 12 56 ff 15 70 80 40 00 85 c0 75 1b 56 ff 15 78 }

	condition:
		uint16(0)==0x5a4d and filesize >25KB and 5 of ($s*)
}