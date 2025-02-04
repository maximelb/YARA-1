rule SIGNATURE_BASE_HKTL_NET_GUID_Shellcodeloader___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "b8787dac-48a3-5711-86ba-0fda86b6224e"
		date = "2020-12-13"
		modified = "2023-04-06"
		reference = "https://github.com/Hzllaga/ShellcodeLoader"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L654-L668"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "c8a36476d087b82e96ea60de1a9879b261d533fb148c44a2e6544fdaa7c574e6"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "a48fe0e1-30de-46a6-985a-3f2de3c8ac96" ascii wide
		$typelibguid0up = "A48FE0E1-30DE-46A6-985A-3F2DE3C8AC96" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}