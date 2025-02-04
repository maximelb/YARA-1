rule SIGNATURE_BASE_HKTL_NET_NAME_Infrastructure_Assessment___FILE
{
	meta:
		description = "Detects .NET red/black-team tools via name"
		author = "Arnim Rupp"
		id = "efacc12b-92b3-5b22-b5bb-cd5a7d7eea0e"
		date = "2021-01-22"
		modified = "2023-12-05"
		reference = "https://github.com/NyaMeeEain/Infrastructure-Assessment"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_names.yar#L597-L610"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "7b2f1481c2880b5b3ee158f2a526ab7fc5e587bbf3847ebe9ddf447742109a78"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$name = "Infrastructure-Assessment" ascii wide
		$compile = "AssemblyTitle" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and all of them
}