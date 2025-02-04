rule SIGNATURE_BASE_HKTL_NET_GUID_Dotnettojscript___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "31827074-fc63-5690-b6c7-8e89daacc07f"
		date = "2020-12-28"
		modified = "2023-04-06"
		reference = "https://github.com/tyranid/DotNetToJScript"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L3807-L3821"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "ddaa4e3dac9d98f3aba0eff7a968a7599c2901ec8b668c5e1115ac67a0a77f30"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "7e3f231c-0d0b-4025-812c-0ef099404861" ascii wide
		$typelibguid0up = "7E3F231C-0D0B-4025-812C-0EF099404861" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}