rule SIGNATURE_BASE_APT_Lazarus_RAT_Jun18_2___FILE
{
	meta:
		description = "Detects Lazarus Group RAT"
		author = "Florian Roth (Nextron Systems)"
		id = "4f2e280e-ed76-5fb9-b137-5191bbea2155"
		date = "2018-06-01"
		modified = "2023-12-05"
		reference = "https://twitter.com/DrunkBinary/status/1002587521073721346"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_lazarus_jun18.yar#L68-L83"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "b22b8386791e86f787efc40a394bbabdb4a009fc2d1a7b87aaf5039fc977a5bd"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "e6096fb512a6d32a693491f24e67d772f7103805ad407dc37065cebd1962a547"

	strings:
		$s1 = "\\KB\\Release\\" ascii
		$s3 = "KB, Version 1.0" fullword wide
		$s4 = "TODO: (c) <Company name>.  All rights reserved." fullword wide

	condition:
		uint16(0)==0x5a4d and filesize <5000KB and 2 of them
}