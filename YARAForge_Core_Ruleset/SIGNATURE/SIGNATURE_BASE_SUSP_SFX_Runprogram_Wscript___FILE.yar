rule SIGNATURE_BASE_SUSP_SFX_Runprogram_Wscript___FILE
{
	meta:
		description = "Detects suspicious SFX that runs wscript.exe"
		author = "Florian Roth (Nextron Systems)"
		id = "e12cea50-a939-5f69-963c-d6d1cb133e92"
		date = "2018-09-27"
		modified = "2023-12-05"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_susp_sfx.yar#L2-L20"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "0d00d83d4b25d80d0ca44fe1c3f3cd33ae5539d2d79c84bfdfcc470669d4f78c"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "e3bb02c5985fc64759b9c2d3c5474d46237ce472b4a0101c6313dafa939de5a9"
		hash2 = "0ecf88d4b32895b4819dec3acb62eaaa7035aa6292499d903f76af60fcec0d6a"
		hash3 = "a7a48f5220bd1ebe04de258d71fdd001711c165d162bd45e8cfbe8964eddf01c"
		hash4 = "b6fa4889d8a87d45706d92714d716025bf223c01929755321faac1ab0db94a88"
		hash5 = "7117b39890659c7dd11e15092c5e5ea9495bec0ff2b6e25254f6e343ed6ca33d"
		hash6 = "ec2afb63555986fa55b7f98ae57c57e1138acb404a0dd2fe4f3d315730b9898e"

	strings:
		$x1 = "RunProgram=\"wscript.exe" fullword ascii

	condition:
		uint16(0)==0x5a4d and filesize <10000KB and 1 of them
}