rule SIGNATURE_BASE_HKTL_NET_GUID_Limeusb_Csharp___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "dfa96b36-e84c-510b-b16b-bd686777b83d"
		date = "2020-12-13"
		modified = "2023-04-06"
		reference = "https://github.com/NYAN-x-CAT/LimeUSB-Csharp"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L40-L54"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "10ba9197effc20894ff0812c7f1cf1a41c7b36ba89426696ca8961e10572d1d8"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "94ea43ab-7878-4048-a64e-2b21b3b4366d" ascii wide
		$typelibguid0up = "94EA43AB-7878-4048-A64E-2B21B3B4366D" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}