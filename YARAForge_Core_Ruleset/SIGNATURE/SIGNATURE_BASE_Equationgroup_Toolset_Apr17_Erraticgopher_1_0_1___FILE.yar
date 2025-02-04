rule SIGNATURE_BASE_Equationgroup_Toolset_Apr17_Erraticgopher_1_0_1___FILE
{
	meta:
		description = "Detects EquationGroup Tool - April Leak"
		author = "Florian Roth (Nextron Systems)"
		id = "1a3fe877-b9ae-50e4-bb1a-c9dcd4d4a657"
		date = "2017-04-15"
		modified = "2023-12-05"
		reference = "https://steemit.com/shadowbrokers/@theshadowbrokers/lost-in-translation"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_eqgrp_apr17.yar#L1553-L1569"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "6b099bd202a962e64cb4f417eb7e09893b869e950eb0740394d222e8b4b89283"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "3d11fe89ffa14f267391bc539e6808d600e465955ddb854201a1f31a9ded4052"

	strings:
		$x1 = "[-] Error appending shellcode buffer" fullword ascii
		$x2 = "[-] Shellcode is too big" fullword ascii
		$x3 = "[+] Exploit Payload Sent!" fullword ascii
		$x4 = "[+] Bound to Dimsvc, sending exploit request to opnum 29" fullword ascii

	condition:
		( uint16(0)==0x5a4d and filesize <150KB and 1 of them )
}