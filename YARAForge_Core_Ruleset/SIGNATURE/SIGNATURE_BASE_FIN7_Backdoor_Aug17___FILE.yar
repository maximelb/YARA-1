rule SIGNATURE_BASE_FIN7_Backdoor_Aug17___FILE
{
	meta:
		description = "Detects Word Dropper from Proofpoint FIN7 Report"
		author = "Florian Roth (Nextron Systems)"
		id = "906daf88-520b-57b5-825e-29f060b43183"
		date = "2017-08-04"
		modified = "2023-12-05"
		reference = "https://www.proofpoint.com/us/threat-insight/post/fin7carbanak-threat-actor-unleashes-bateleur-jscript-backdoor"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_fin7_backdoor.yar#L34-L74"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "76818317c543c1464898463741ddaf8c6368d0f5004c088a323c4323db49060c"
		score = 75
		quality = 85
		tags = "FILE"

	strings:
		$x1 = "wscript.exe //b /e:jscript C:\\Users\\" ascii
		$x2 = "wscript.exe /b /e:jscript C:\\Users\\" ascii
		$x3 = "schtasks /Create /f /tn \"GoogleUpdateTaskMachineSystem\" /tr \"wscript.exe" ascii nocase
		$x4 = "schtasks /Delete /F /TN \"\"GoogleUpdateTaskMachineCore" ascii nocase
		$x5 = "schtasks /Delete /F /TN \"GoogleUpdateTaskMachineCore" ascii nocase
		$x6 = "wscript.exe //b /e:jscript %TMP%\\debug.txt" ascii
		$s1 = "/?page=wait" fullword ascii
		$a1 = "autoit3.exe" fullword ascii
		$a2 = "dumpcap.exe" fullword ascii
		$a3 = "tshark.exe" fullword ascii
		$a4 = "prl_cc.exe" fullword ascii
		$v1 = "vmware" fullword ascii
		$v2 = "PCI\\\\VEN_80EE&DEV_CAFE" fullword ascii
		$v3 = "VMWVMCIHOSTDEV" fullword ascii
		$c1 = "apowershell" fullword ascii
		$c2 = "wpowershell" fullword ascii
		$c3 = "get_passwords" fullword ascii
		$c4 = "kill_process" fullword ascii
		$c5 = "get_screen" fullword ascii

	condition:
		( uint16(0)==0x5a4d and filesize <5000KB and (1 of ($x*) or all of ($a*) or all of ($v*) or 3 of ($c*))) or 5 of them
}