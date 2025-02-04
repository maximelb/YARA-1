rule SIGNATURE_BASE_Apt_Projectsauron_Pipe_Backdoor___FILE
{
	meta:
		description = "Rule to detect ProjectSauron pipe backdoors"
		author = "Kaspersky Lab"
		id = "5a1dd4b3-a03c-51bb-a7bc-25729b487f70"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://securelist.com/blog/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_project_sauron.yara#L4-L21"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "72f6c6fa65f15e4bab18a0f9d5b5b2f571b21d70c7ff306020784ce604a2e0a5"
		score = 75
		quality = 85
		tags = "FILE"
		version = "1.0"

	strings:
		$a1 = "CreateNamedPipeW" fullword ascii
		$a2 = "SetSecurityDescriptorDacl" fullword ascii
		$a3 = "GetOverlappedResult" fullword ascii
		$a4 = "TerminateThread" fullword ascii
		$a5 = "%s%s%X" fullword wide

	condition:
		uint16(0)==0x5A4D and ( all of ($a*)) and filesize <100000
}