rule SIGNATURE_BASE_HKTL_NET_GUID_Sneakyservice___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "d02d34f0-7aa1-5110-b7ea-670b5fb98150"
		date = "2020-12-28"
		modified = "2023-04-06"
		reference = "https://github.com/malcomvetter/SneakyService"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L3117-L3131"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "cf35b2709e6a998ee672681d99f91fe5f452ba612bf0c5d9abe20e93d3cb236e"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "897819d5-58e0-46a0-8e1a-91ea6a269d84" ascii wide
		$typelibguid0up = "897819D5-58E0-46A0-8E1A-91EA6A269D84" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}