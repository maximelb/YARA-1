rule SIGNATURE_BASE_Equationgroup_Toolset_Apr17_Kisucomms_Target_2000___FILE
{
	meta:
		description = "Detects EquationGroup Tool - April Leak"
		author = "Florian Roth (Nextron Systems)"
		id = "693a82e5-a3f1-5a56-b33d-0daef36bbe5f"
		date = "2017-04-15"
		modified = "2023-12-05"
		reference = "https://steemit.com/shadowbrokers/@theshadowbrokers/lost-in-translation"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_eqgrp_apr17.yar#L3178-L3198"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "7d350228ad779d0453c1077afb2b533036eb1e43e4f74a433d68c781db963ab1"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "94eea1bad534a1dc20620919de8046c9966be3dd353a50f25b719c3662f22135"

	strings:
		$s1 = "363<3S3c3l3q3v3{3" fullword ascii
		$s2 = "3!3%3)3-3135393@5" fullword ascii
		$op0 = { eb 03 89 46 54 47 83 ff 1a 0f 8c 40 ff ff ff 8b }
		$op1 = { 8b 46 04 85 c0 74 0f 50 e8 34 fb ff ff 83 66 04 }
		$op2 = { c6 45 fc 02 8d 8d 44 ff ff ff e8 d2 2f 00 00 eb }

	condition:
		( uint16(0)==0x5a4d and filesize <200KB and ( all of ($s*) or all of ($op*)))
}