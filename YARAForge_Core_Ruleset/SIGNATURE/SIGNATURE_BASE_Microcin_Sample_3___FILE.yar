rule SIGNATURE_BASE_Microcin_Sample_3___FILE
{
	meta:
		description = "Malware sample mentioned in Microcin technical report by Kaspersky"
		author = "Florian Roth (Nextron Systems)"
		id = "daecdfe3-e78c-55ee-83a3-3cee8cb9bb5f"
		date = "2017-09-26"
		modified = "2023-12-05"
		reference = "https://securelist.com/files/2017/09/Microcin_Technical-PDF_eng_final.pdf"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_microcin.yar#L54-L68"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "bf1227460f1fc4a7bede853b0d4f15b520db870ac7ce2e6684dc195ea6322e82"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "4f74a3b67c5ed6f38f08786f1601214412249fe128f12c51525135710d681e1d"

	strings:
		$x1 = "C:\\Users\\Lenovo\\Desktop\\test\\Release\\test.pdb" fullword ascii
		$s2 = "test, Version 1.0" fullword wide

	condition:
		( uint16(0)==0x5a4d and filesize <200KB and all of them )
}