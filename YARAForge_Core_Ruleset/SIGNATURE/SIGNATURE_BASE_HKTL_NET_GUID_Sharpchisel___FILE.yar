rule SIGNATURE_BASE_HKTL_NET_GUID_Sharpchisel___FILE
{
	meta:
		description = "Detects .NET red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "3b7e6703-ebe8-5a98-839f-7d0349ab483f"
		date = "2021-01-21"
		modified = "2023-04-06"
		reference = "https://github.com/shantanu561993/SharpChisel"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L4623-L4637"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "9df151164aa269c13a79d862c15cc75bd0bb4668753f282149c162bd63ece471"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "f5f21e2d-eb7e-4146-a7e1-371fd08d6762" ascii wide
		$typelibguid0up = "F5F21E2D-EB7E-4146-A7E1-371FD08D6762" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}