rule SIGNATURE_BASE_HKTL_NET_GUID_Whitelistevasion___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "cd2740d0-0315-5a32-b34a-1998024fcc06"
		date = "2020-12-13"
		modified = "2023-04-06"
		reference = "https://github.com/khr0x40sh/WhiteListEvasion"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L72-L86"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "39ec3d49a6fa17dca59bfee0d312c5d57a46ee0c827c01b6e25d3b107adaba04"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "858386df-4656-4a1e-94b7-47f6aa555658" ascii wide
		$typelibguid0up = "858386DF-4656-4A1E-94B7-47F6AA555658" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}