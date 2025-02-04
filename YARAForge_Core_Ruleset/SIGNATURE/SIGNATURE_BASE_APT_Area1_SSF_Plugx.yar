rule SIGNATURE_BASE_APT_Area1_SSF_Plugx
{
	meta:
		description = "Detects send tool used in phishing campaign reported by Area 1 in December 2018"
		author = "Area 1"
		id = "a5b4e781-f0d1-55df-926c-2d321aa48139"
		date = "2018-12-19"
		modified = "2023-12-05"
		reference = "https://cdn.area1security.com/reports/Area-1-Security-PhishingDiplomacy.pdf"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_area1_phishing_diplomacy.yar#L2-L27"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "a71f124f0c89c4b020f21d029d0d2997b2bea71526e83bcadffb67acc9cca8f7"
		score = 75
		quality = 85
		tags = ""

	strings:
		$feature_call = { 8b 0? 56 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ??
         6a 07 6a ff ff d0 8b f0 85 f6 74 14 }
		$keylogger_reg = { 8b 4d 08 6a 0c 6a 01 8d 55 f4 52 c7 45 f4 01 00 06 00
         c7 45 f8 00 01 00 00 89 4d fc ff d0 85 c0 75 1d }
		$file_op = { 55 8b ec 83 ec 20 0f b7 56 18 8b 46 10 66 8b 4e 14 89 45 e4
         8d 44 32 10 66 89 4d f0 0f b7 4e 1a 57 89 45 e8 33 ff 8d 45 e0 8d 54
         31 10 50 89 7d e0 89 55 ec c7 45 fa ?? ?? ?? ?? 89 7d f2 89 7d f6 ff
         15 1c 43 02 10 }
		$ver_cmp = { 0f b6 8d b0 fe ff ff 0f b6 95 b4 fe ff ff 66 c1 e1 08 0f b7
         c1 0b c2 3d 02 05 00 00 7f 2c }
		$regedit = { c7 06 23 01 12 20 c7 46 04 01 90 00 00 89 5e 0c 89 5e 08 e8
         51 fb ff ff 8b 4d 08 8b 50 38 68 30 75 00 00 56 51 ff d2 }
		$get_device_caps = { 8b 1d ?? ?? ?? ?? 6a 08 50 ff d3 0f b7 56 12 8b c8 0f af ca
         b8 1f 85 eb 51 f7 e9 c1 fa 05 8b c2 c1 e8 1f 03 c2 89 45 f8 8b 45 f0 6a 0a 50 ff d3
         0f b7 56 14 8b c8 0f af ca b8 1f 85 eb 51 }

	condition:
		3 of them
}