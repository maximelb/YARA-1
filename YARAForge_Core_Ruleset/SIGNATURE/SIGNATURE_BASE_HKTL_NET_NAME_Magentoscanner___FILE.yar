rule SIGNATURE_BASE_HKTL_NET_NAME_Magentoscanner___FILE
{
	meta:
		description = "Detects .NET red/black-team tools via name"
		author = "Arnim Rupp"
		id = "db3912bd-574c-57e2-a9b6-4b440d144471"
		date = "2021-01-22"
		modified = "2023-12-05"
		reference = "https://github.com/soufianetahiri/MagentoScanner"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_names.yar#L122-L135"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "245dce3be07c8e84dfcd2cdb2d9f24406a9b11b437e74969f1472a6ee149fd9c"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$name = "MagentoScanner" ascii wide
		$compile = "AssemblyTitle" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and all of them
}