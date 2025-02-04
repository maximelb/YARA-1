rule SIGNATURE_BASE_HKTL_NET_GUID_Sharp_Smbexec___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "6a1024af-734c-5974-af50-db51dbd694ff"
		date = "2020-12-28"
		modified = "2023-04-06"
		reference = "https://github.com/checkymander/Sharp-SMBExec"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L3683-L3697"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "e9e248c4ac359a098f1ef26dc300e38836f070545db182a0b72a6eaf9bf003da"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "344ee55a-4e32-46f2-a003-69ad52b55945" ascii wide
		$typelibguid0up = "344EE55A-4E32-46F2-A003-69AD52B55945" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}