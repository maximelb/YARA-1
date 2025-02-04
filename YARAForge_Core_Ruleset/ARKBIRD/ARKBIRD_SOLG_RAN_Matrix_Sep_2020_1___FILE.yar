rule ARKBIRD_SOLG_RAN_Matrix_Sep_2020_1___FILE
{
	meta:
		description = "Detect MATRIX ransomware"
		author = "Arkbird_SOLG"
		id = "a7df188c-e381-55e6-97e6-45f5830ff0d3"
		date = "2020-10-15"
		modified = "2020-10-15"
		reference = "Internal Research"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2020-10-15/MATRIX/RAN_Matrix_Sep_2020_1.yar#L1-L28"
		license_url = "N/A"
		logic_hash = "e832b258e8d2ee94ebbf2e715ca01960a92d723ee017261b18ce05d3095bf8a3"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "7b5e536827c3bb9f8077aed78726585739bcde796904edd6c4faadc9a8d22eaf"
		hash2 = "afca3b84177133ff859d9b9d620b582d913218723bfcf83d119ec125b88a8c40"
		hash3 = "d87d1fbeffe5b18e22f288780bf50b1e7d5af9bbe2480c80ea2a7497a3d52829"
		hash4 = "5474b58de90ad79d6df4c633fb773053fecc16ad69fb5b86e7a2b640a2a056d6"

	strings:
		$debug1 = "[LDRIVES]: not found!" fullword wide
		$debug2 = "[DONE]: NO_SHARES!" fullword wide
		$debug3 = "[ALL_LOCAL_KID]: " fullword wide
		$debug4 = "[FINISHED]: G=" fullword wide
		$debug5 = "[FEX_START]" fullword wide
		$debug6 = "[LOGSAVED]" fullword wide
		$debug7 = "[GENKEY]" fullword wide
		$debug8 = "[SHARES]" fullword wide
		$debug9 = "[SHARESSCAN]: " fullword wide
		$reg1 = { 2e 00 70 00 68 00 70 00 3f 00 61 00 70 00 69 00 6b 00 65 00 79 00 3d }
		$reg2 = { 26 00 63 00 6f 00 6d 00 70 00 75 00 73 00 65 00 72 00 3d }
		$reg3 = { 26 00 73 00 69 00 64 00 3d 00 }
		$reg4 = { 26 00 70 00 68 00 61 00 73 00 65 00 3d }
		$reg5 = { 47 00 45 00 54 }

	condition:
		uint16(0)==0x5a4d and filesize >500KB and 4 of ($debug*) and 3 of ($reg*)
}