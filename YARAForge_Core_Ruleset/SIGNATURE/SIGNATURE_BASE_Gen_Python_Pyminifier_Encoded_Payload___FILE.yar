rule SIGNATURE_BASE_Gen_Python_Pyminifier_Encoded_Payload___FILE
{
	meta:
		description = "Detects python code encoded by pyminifier. Used by the Machete malware as researched by ESET"
		author = "John Lambert @JohnLaTwC"
		id = "d7297e6a-e1c7-57dd-a57f-a3b67face2f3"
		date = "2019-12-16"
		modified = "2023-12-05"
		reference = "https://github.com/liftoff/pyminifier"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_python_pyminifier_encoded_payload.yar#L1-L29"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "01df8765ea35db382d1dd67a502bf1d9647d8fe818ec31abff41c7e41c2816c0"
		hash = "15d201152a9465497a0f9dd6939e48315b358702c5e2a3c506ad436bb8816da7"
		hash = "ab91f76394ddf866cc0b315d862a19b57ded93be5dfc2dd0a81e6a43d0c5f301"
		hash = "b67256906d976aafb6071d23d1b3f59a1696f26b25ff4713b9342d41e656dfba"
		hash = "d5664c70f3543f306f765ea35e22829dbea66aec729e8e11edea9806d0255b7e"
		hash = "dd2b0e2c2cb8a83574248bda54ce472899b22eb602e8ebecafcce2c4355177fe"
		hash = "ed76bd136f40a23aeffe0aba02f13b9fea3428c19b715aafa6ea9be91e4006ca"
		hash = "b454179c13cb4727ae06cc9cd126c3379e2aded5c293af0234ac3312bf9bdad2"
		logic_hash = "6e744d9404ca476766b217fe808ba6a8cc6cbf09232a69aae6259acd377080a0"
		score = 75
		quality = 85
		tags = "FILE"

	strings:
		$s1 = "exec(zlib.decompress(base64.b64decode('eJ"
		$s2 = "base64" fullword
		$s3 = "zlib" fullword

	condition:
		filesize <20KB and uint32be(0)==0x696d706f and all of them
}