rule SIGNATURE_BASE_HKTL_NET_NAME_Sharpyshell___FILE
{
	meta:
		description = "Detects .NET red/black-team tools via name"
		author = "Arnim Rupp"
		id = "3069c5eb-446e-5bfa-9df0-2e03f229d4d1"
		date = "2021-01-22"
		modified = "2023-12-05"
		reference = "https://github.com/antonioCoco/SharPyShell"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_names.yar#L152-L165"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "89d0010c08349f8982c7f5aa5f7855702556ce10f9f3b5b18b61349c5233e001"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$name = "SharPyShell" ascii wide
		$compile = "AssemblyTitle" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and all of them
}