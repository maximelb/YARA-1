rule SIGNATURE_BASE_MAL_CN_Flystudio_May18_1___FILE
{
	meta:
		description = "Detects malware / hacktool detected in May 2018"
		author = "Florian Roth (Nextron Systems)"
		id = "b78b9ea0-5eef-5922-b5d7-d3c5ddce7fad"
		date = "2018-05-11"
		modified = "2023-12-05"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_floxif_flystudio.yar#L21-L38"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "8d03f02a270d8664175b65398c01ec4f0ea182437b31847f9bf4181edb0c36bb"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "b85147366890598518d4f277d44506eef871fd7fc6050d8f8e68889cae066d9e"

	strings:
		$s1 = "WTNE / MADE BY E COMPILER - WUTAO " fullword ascii
		$s2 = "www.cfyhack.cn" fullword ascii

	condition:
		uint16(0)==0x5a4d and filesize <5000KB and (pe.imphash()=="65ae5cf17140aeaf91e3e9911da0ee3e" or 1 of them )
}