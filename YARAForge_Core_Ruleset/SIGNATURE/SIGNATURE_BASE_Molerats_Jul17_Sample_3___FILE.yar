rule SIGNATURE_BASE_Molerats_Jul17_Sample_3___FILE
{
	meta:
		description = "Detects Molerats sample - July 2017"
		author = "Florian Roth (Nextron Systems)"
		id = "e1a3323e-fe84-59e5-86d9-dca0c261e3c3"
		date = "2017-07-07"
		modified = "2023-12-05"
		reference = "https://mymalwareparty.blogspot.de/2017/07/operation-desert-eagle.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_molerats_jul17.yar#L44-L59"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "4829905ede523fd9ed2cdf610f8fce4c0a5d993885e1897d1782ca70e96fa9a2"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "995eee4122802c2dc83bb619f8c53173a5a9c656ad8f43178223d78802445131"
		hash2 = "fec657a19356753008b0f477083993aa5c36ebaf7276742cf84bfe614678746b"

	strings:
		$s1 = "ccleaner.exe" fullword wide
		$s2 = "Folder.exe" fullword ascii

	condition:
		( uint16(0)==0x5a4d and filesize <600KB and all of them )
}