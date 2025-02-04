rule SIGNATURE_BASE_Ismdoor_Jul17_A2___FILE
{
	meta:
		description = "Detects IsmDoor Malware"
		author = "Florian Roth (Nextron Systems)"
		id = "ea72a496-cbc8-56f6-a852-7af9761ea58e"
		date = "2017-08-01"
		modified = "2023-12-05"
		reference = "https://twitter.com/Voulnet/status/892104753295110145"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_malware_generic.yar#L54-L71"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "7944f690be190927c905d3b3c6e26765504af9fcfb445cf70c8899af115d5001"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "be72c89efef5e59c4f815d2fce0da5a6fac8c90b86ee0e424868d4ae5e550a59"
		hash2 = "ea1be14eb474c9f70e498c764aaafc8b34173c80cac9a8b89156e9390bd87ba8"

	strings:
		$s1 = "powershell -exec bypass -file \"" fullword ascii
		$s2 = "PAQlFcaWUaFkVICEx2CkNCUUpGcA" ascii
		$s3 = "\\Documents" ascii
		$s4 = "\\Libraries" ascii

	condition:
		( uint16(0)==0x5a4d and filesize <300KB and 3 of them )
}