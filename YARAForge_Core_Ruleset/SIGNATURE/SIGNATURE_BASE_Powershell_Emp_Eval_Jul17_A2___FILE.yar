rule SIGNATURE_BASE_Powershell_Emp_Eval_Jul17_A2___FILE
{
	meta:
		description = "Detects suspicious sample with PowerShell content "
		author = "Florian Roth (Nextron Systems)"
		id = "8f299fcd-156c-5ce1-8582-c2a4ff2c0cfc"
		date = "2017-07-27"
		modified = "2023-12-05"
		reference = "PowerShell Empire Eval"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_ps_empire_eval.yar#L27-L41"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "28f320e721a61d7e2db39830652038eb4090429d73162888570a97b0bc1504d8"
		score = 65
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "e14c139159c23fdc18969afe57ec062e4d3c28dd42a20bed8ddde37ab4351a51"

	strings:
		$x1 = "\\support\\Release\\ab.pdb" ascii
		$s2 = "powershell.exe" ascii fullword

	condition:
		( uint16(0)==0x5a4d and filesize <200KB and all of them )
}