rule SIGNATURE_BASE_HKTL_NET_NAME_Xbapappwhitelistbypasspoc___FILE
{
	meta:
		description = "Detects .NET red/black-team tools via name"
		author = "Arnim Rupp"
		id = "b05253ce-cba4-531d-8f39-d8fae71b114d"
		date = "2021-01-22"
		modified = "2023-12-05"
		reference = "https://github.com/jpginc/xbapAppWhitelistBypassPOC"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_names.yar#L792-L805"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "3c79b70d3a72084dff391ba297518c4fe748d35b794278c4edf2d1faa4bd216e"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$name = "xbapAppWhitelistBypassPOC" ascii wide
		$compile = "AssemblyTitle" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and all of them
}