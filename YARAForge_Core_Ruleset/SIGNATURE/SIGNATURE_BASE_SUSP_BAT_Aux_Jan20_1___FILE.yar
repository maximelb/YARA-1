rule SIGNATURE_BASE_SUSP_BAT_Aux_Jan20_1___FILE
{
	meta:
		description = "Detects BAT file often dropped to cleanup temp dirs during infection"
		author = "Florian Roth (Nextron Systems)"
		id = "c97f189e-a0c2-532e-b087-8669da72a2ad"
		date = "2020-01-29"
		modified = "2023-12-05"
		reference = "https://medium.com/@quoscient/the-chicken-keeps-laying-new-eggs-uncovering-new-gc-maas-tools-used-by-top-tier-threat-actors-531d80a6b4e9"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_susp_bat_aux.yar#L2-L19"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "6b8cd9b7683a18a02a81222d6819fe903500702c83f198f73ac428d1bc91fb9a"
		score = 65
		quality = 85
		tags = "FILE"
		hash1 = "f5d558ec505b635b1e37557350562ad6f79b3da5cf2cf74db6e6e648b7a47127"

	strings:
		$s1 = "if exist \"C:\\Users\\" ascii
		$s2 = "\\AppData\\Local\\Temp\\" ascii
		$s3 = "del \"C:\\Users\\" ascii
		$s4 = ".bat\"" ascii
		$s5 = ".exe\" goto" ascii

	condition:
		uint8(0)==0x3a and filesize <=1KB and all of them
}