rule SIGNATURE_BASE_Equationgroup_Toolset_Apr17_Ntfltmgr___FILE
{
	meta:
		description = "Detects EquationGroup Tool - April Leak"
		author = "Florian Roth (Nextron Systems)"
		id = "402b14f5-4a7a-58fb-8f4a-0a29d6d34440"
		date = "2017-04-15"
		modified = "2023-12-05"
		reference = "https://steemit.com/shadowbrokers/@theshadowbrokers/lost-in-translation"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_eqgrp_apr17.yar#L2451-L2475"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "9f280baf785f54218cbf47f65419cfe23c687e58021f36b5d116904d2cec9a9b"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "3df61b8ef42a995b8f15a0d38bc51f2f08f8d9a2afa1afc94c6f80671cf4a124"
		hash2 = "f7a886ee10ee6f9c6be48c20f370514be62a3fd2da828b0dff44ff3d485ff5c5"
		hash3 = "980954a2440122da5840b31af7e032e8a25b0ce43e071ceb023cca21cedb2c43"

	strings:
		$s3 = "wCw3wDwAw2wNw@wEwZw2wDwEwBwZwFwFw4w2wZw5w1w4wFwZwGwOwGwGwEw5w2wFwGwDwFwOw" fullword ascii
		$s6 = "w+w;w2w0w6w4w.w(wRw" fullword ascii
		$op1 = { 80 f7 ff ff 49 89 84 34 18 02 00 00 41 83 a4 34 }
		$op2 = { ff 15 0b 34 00 00 eb 92 }
		$op3 = { 4d 8d b4 34 08 02 00 00 4d 85 f6 0f 84 ae }
		$op4 = { 8b ca 2b ce 8d 34 01 0f b7 3e 66 3b 7d f0 89 75 }
		$op5 = { 8a 40 01 00 c7 47 70 }
		$op6 = { e9 3c ff ff ff 6a ff 8d 45 f0 50 e8 27 11 00 00 }
		$op7 = { 8b 45 08 53 57 8b 7d 0c c7 40 34 }

	condition:
		( uint16(0)==0x5a4d and filesize <100KB and 4 of them )
}