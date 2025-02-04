rule SIGNATURE_BASE_HKTL_NET_GUID_Fenrir___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "cfc6312d-5997-5261-b771-c7f3f30bf86c"
		date = "2020-12-13"
		modified = "2023-04-06"
		reference = "https://github.com/nccgroup/Fenrir"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L1618-L1632"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "f2fb94506f10bbf9f077cb81019873c810ea983888192b0d5ccb3e5e02891288"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "aecec195-f143-4d02-b946-df0e1433bd2e" ascii wide
		$typelibguid0up = "AECEC195-F143-4D02-B946-DF0E1433BD2E" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}