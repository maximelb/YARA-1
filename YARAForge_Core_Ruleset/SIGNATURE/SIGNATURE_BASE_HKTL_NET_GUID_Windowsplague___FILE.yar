rule SIGNATURE_BASE_HKTL_NET_GUID_Windowsplague___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "89729c43-ae01-5c1f-af04-06d7a6c4e7fc"
		date = "2020-12-13"
		modified = "2023-04-06"
		reference = "https://github.com/RITRedteam/WindowsPlague"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L1006-L1020"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "3c8ce2b52a4ebab5b9693d957c43cf1c340160f4bdd05d3cb95af496e7168d83"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "cdf8b024-70c9-413a-ade3-846a43845e99" ascii wide
		$typelibguid0up = "CDF8B024-70C9-413A-ADE3-846A43845E99" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}