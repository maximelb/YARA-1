rule SIGNATURE_BASE_HKTL_NET_NAME_Maliciousclickoncegenerator___FILE
{
	meta:
		description = "Detects .NET red/black-team tools via name"
		author = "Arnim Rupp"
		id = "683af3b4-4c91-5ff3-96bf-d5c1d9c19cc2"
		date = "2021-01-22"
		modified = "2023-12-05"
		reference = "https://github.com/Mr-Un1k0d3r/MaliciousClickOnceGenerator"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_names.yar#L77-L90"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "91e5878d49ad9af5420d4e29afaa600337fb8051951598a997cd74d72c884206"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$name = "MaliciousClickOnceGenerator" ascii wide
		$compile = "AssemblyTitle" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and all of them
}