rule RUSSIANPANDA_Whitesnakestealer_1___FILE
{
	meta:
		description = "WhiteSnake Stealer"
		author = "RussianPanda"
		id = "70b69aba-5096-59a6-bb0b-44d248aecc26"
		date = "2023-07-04"
		modified = "2023-12-11"
		reference = "https://russianpanda.com/2023/07/04/WhiteSnake-Stealer-Malware-Analysis/"
		source_url = "https://github.com/RussianPanda95/Yara-Rules/blob/1a5f7fbf0094a17dcddaa74b56fb43a231b550af/WhiteSnake-Stealer/WhiteSnake_rc4.yar#L1-L17"
		license_url = "N/A"
		logic_hash = "24985a2c3b0d72858decd17cb2b8e485caa94c01ad72a014edc68ed4facfd71e"
		score = 75
		quality = 83
		tags = "FILE"

	strings:
		$s1 = {73 68 69 74 2e 6a 70 67}
		$s2 = {FE 0C ?? 00 20 00 01 00 00 3F ?? FF FF FF 20 00 00 00 00 FE 0E ?? 00 38 ?? 00 00 00 FE 0C}
		$s3 = "qemu" wide
		$s4 = "vbox" wide

	condition:
		all of ($s*) and filesize <300KB
}