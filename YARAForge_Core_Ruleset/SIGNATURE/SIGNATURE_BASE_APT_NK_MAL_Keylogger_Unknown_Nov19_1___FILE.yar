rule SIGNATURE_BASE_APT_NK_MAL_Keylogger_Unknown_Nov19_1___FILE
{
	meta:
		description = "Detects unknown keylogger reported by CNMF in November 2019"
		author = "Florian Roth (Nextron Systems)"
		id = "5311d883-52e0-5503-9494-c583fabbedfe"
		date = "2019-11-06"
		modified = "2023-12-05"
		reference = "https://twitter.com/CNMF_VirusAlert/status/1192131508007505921"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_nk_gen.yar#L2-L35"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "a3b5c82cb8aa09e3c1b955bb175046e86f96da1f187eb46df83caaaf9e1370b2"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "04d70bb249206a006f83db39bbe49ff6e520ea329e5fbb9c758d426b1c8dec30"
		hash2 = "618a67048d0a9217317c1d1790ad5f6b044eaa58a433bd46ec2fb9f9ff563dc6"

	strings:
		$x1 = "CKeyLogDlg::Keylogger_WriteFile" ascii
		$x2 = "Keylog file is saved >>>>>> %s" fullword ascii
		$x3 = "MicCap file is saved >>>>>> %s" fullword ascii
		$x4 = "cr5cr33nc4p.dat" fullword ascii
		$xc1 = { 73 74 61 74 75 73 00 00 5C 4B 65 79 6C 6F 67 }
		$xc2 = { 5B 43 4D 69 63 43 61 70 44 6C 67 5D 2E 00 00 00
               25 30 34 64 25 30 32 64 25 30 32 64 25 30 32 64
               25 30 32 64 2E 77 61 76 }
		$xc3 = { 25 73 00 00 25 73 5C 2A 2E 2A 00 00 61 62 00 00
               5B 25 73 5D 20 75 70 6C 6F 61 64 20 66 61 69 6C
               65 64 2E 00 72 62 00 00 5B 25 73 5D 20 6F 70 65
               6E 20 66 61 69 6C 65 64 2E 00 00 00 2E 2E 00 00
               5B 25 73 20 2D 3E 20 25 73 5D 20 63 6F 70 79 20
               66 61 69 6C 65 64 }
		$s1 = "%s\\cmd.exe /c %s" fullword ascii
		$s2 = "File upload error occured in [CFSDlg::ProcessResultMessage]." fullword ascii
		$s3 = "\\SAM\\Domains\\Account\\Users\\Names" ascii
		$s4 = "%s_hist%d:%d:%s:%s:::" fullword ascii
		$s5 = "CARAT_Ws2_32.dll" fullword ascii
		$s6 = "PID [%s], open process failed." fullword ascii

	condition:
		uint16(0)==0x5a4d and filesize <=40000KB and (1 of ($x*) or 4 of them )
}