rule ARKBIRD_SOLG_Ran_Pay2Key_Nov_2020_1___FILE
{
	meta:
		description = "Detect Pay2Key ransomware"
		author = "Arkbird_SOLG"
		id = "440b8128-4708-54ba-94c3-c0b522004da6"
		date = "2020-12-01"
		modified = "2020-12-14"
		reference = "Internal Research"
		source_url = "https://github.com/StrangerealIntel/DailyIOC/blob/a873ff1298c43705e9c67286f3014f4300dd04f7/2020-12-14/Pay2Key/Ran_Pay2Key_Nov_2020_1.yar#L1-L31"
		license_url = "N/A"
		logic_hash = "f1ea1ed141ba7a1eaaa34c216adebfacaa23ef8776a0216b778ccb34bd000590"
		score = 75
		quality = 75
		tags = "FILE"
		hash1 = "5bae961fec67565fb88c8bcd3841b7090566d8fc12ccb70436b5269456e55c00"
		hash2 = "d2b612729d0c106cb5b0434e3d5de1a5dc9d065d276d51a3fb25a08f39e18467"
		hash3 = "ea7ed9bb14a7bda590cf3ff81c8c37703a028c4fdb4599b6a283d68fdcb2613f"

	strings:
		$s1 = "F:\\2-Sources\\21-FinalCobalt\\Source\\cobalt\\Cobalt\\Cobalt\\Win32\\Release\\Client\\Cobalt.Client.pdb" fullword ascii
		$s2 = ".\\Cobalt-Client-log.txt" fullword ascii
		$s3 = ".\\Config.ini" fullword wide
		$s4 = "Local\\{C15730E2-145C-4c5e-B005-3BC753F42475}-once-flag" fullword ascii
		$s5 = "\\Microsoft\\Windows\\Themes\\TranscodedWallpaper" fullword ascii
		$s6 = { 40 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 2e 00 31 00 2e 00 31 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 31 00 20 00 2d 00 77 00 20 00 33 00 30 00 30 00 30 00 20 00 3e 00 20 00 4e 00 75 00 6c 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 22 00 25 00 73 00 22 }
		$s7 = "%WINDRIVE%" fullword wide
		$s8 = "%WINDIR%" fullword wide
		$dbg1 = "message.txt" fullword ascii
		$dbg2 = "Failed To Get Data...." fullword ascii
		$dbg3 = "lock.locked()" fullword wide
		$dbg4 = { 47 65 74 41 64 61 70 74 65 72 73 49 6e 66 6f 20 66 61 69 6c 65 64 20 77 69 74 68 20 65 72 72 6f 72 3a 20 25 64 0a }
		$dbg5 = { 43 72 79 70 74 41 63 71 75 69 72 65 43 6f 6e 74 65 78 74 20 66 61 69 6c 65 64 3a 20 25 78 0a }
		$dbg6 = { 43 72 79 70 74 44 65 72 69 76 65 4b 65 79 20 66 61 69 6c 65 64 3a 20 25 78 0a 00 00 25 00 64 }
		$dbg7 = { 5b 2d 5d 20 43 72 79 70 74 45 6e 63 72 79 70 74 20 66 61 69 6c 65 64 0a }

	condition:
		uint16(0)==0x5a4d and filesize >500KB and (5 of ($s*) and 4 of ($dbg*))
}