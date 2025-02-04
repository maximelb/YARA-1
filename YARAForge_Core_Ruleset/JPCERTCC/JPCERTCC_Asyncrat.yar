rule JPCERTCC_Asyncrat
{
	meta:
		description = "detect AsyncRat in memory"
		author = "JPCERT/CC Incident Response Group"
		id = "758614e8-df93-54ff-9f06-0020b54fbf88"
		date = "2021-08-16"
		modified = "2021-08-16"
		reference = "internal research"
		source_url = "https://github.com/JPCERTCC/MalConfScan//blob/19ec0d145535a6a4cfd37c0960114f455a8c343e/yara/rule.yara#L531-L548"
		license_url = "https://github.com/JPCERTCC/MalConfScan//blob/19ec0d145535a6a4cfd37c0960114f455a8c343e/LICENSE.txt"
		logic_hash = "0a60718ea3412129c40e2eee53591dbf094a6b914502242b5ab9b54f8fd95da0"
		score = 75
		quality = 76
		tags = ""
		rule_usage = "memory scan"
		hash1 = "1167207bfa1fed44e120dc2c298bd25b7137563fdc9853e8403027b645e52c19"
		hash2 = "588c77a3907163c3c6de0e59f4805df41001098a428c226f102ed3b74b14b3cc"

	strings:
		$salt = {BF EB 1E 56 FB CD 97 3B B2 19 02 24 30 A5 78 43 00 3D 56 44 D2 1E 62 B9 D4 F1 80 E7 E6 C3 39 41}
		$b1 = {00 00 00 0D 53 00 48 00 41 00 32 00 35 00 36 00 00}
		$b2 = {09 50 00 6F 00 6E 00 67 00 00}
		$s1 = "pastebin" ascii wide nocase
		$s2 = "pong" wide
		$s3 = "Stub.exe" ascii wide

	condition:
		($salt and (2 of ($s*) or 1 of ($b*))) or ( all of ($b*) and 2 of ($s*))
}