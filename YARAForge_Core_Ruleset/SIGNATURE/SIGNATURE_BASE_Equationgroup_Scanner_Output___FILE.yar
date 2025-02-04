rule SIGNATURE_BASE_Equationgroup_Scanner_Output___FILE
{
	meta:
		description = "Detects output generated by EQGRP scanner.exe"
		author = "Florian Roth (Nextron Systems)"
		id = "a73bc98f-f7b1-5f16-bf23-1d5c9a7a371b"
		date = "2017-04-17"
		modified = "2023-12-05"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_eqgrp_apr17.yar#L3609-L3626"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "a8ac7e7f14d72798a1f6658eae4c66d871a525c8cb49afa2ca8656047da20524"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$s0 = "# scanning ip  " ascii
		$s1 = "# Scan for windows boxes" ascii fullword
		$s2 = "Going into send" ascii fullword
		$s3 = "# Does not work" ascii fullword
		$s4 = "You are the weakest link, goodbye" ascii fullword
		$s5 = "rpc   Scan for RPC  folks" ascii fullword

	condition:
		filesize <1000KB and 2 of them
}