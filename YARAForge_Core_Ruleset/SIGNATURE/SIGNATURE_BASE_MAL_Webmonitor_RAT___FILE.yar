rule SIGNATURE_BASE_MAL_Webmonitor_RAT___FILE
{
	meta:
		description = "Detects WebMonitor RAT"
		author = "Florian Roth (Nextron Systems)"
		id = "5378f22e-4bba-50e7-8374-5135e980e06b"
		date = "2018-04-13"
		modified = "2023-12-05"
		reference = "https://researchcenter.paloaltonetworks.com/2018/04/unit42-say-cheese-webmonitor-rat-comes-c2-service-c2aas/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_webmonitor_rat.yar#L1-L34"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "fbf6368527a7bd841b7679d668d6b77ce720fd0f6bcbd5fa9ff6301ae72199ec"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "27aaad8a7b3fd53d99077a9202e8bed05696c843ed2485bea6eb9e33a1c273ac"
		hash2 = "05111c305028b5d822ecd12de9879560223c42860cc9d448c47886c236648607"

	strings:
		$x1 = "send_keylog_stream_start" fullword wide
		$x2 = "KEYLOG_STREAM_STOP" fullword wide
		$s1 = "SHELL_EXEC" fullword wide
		$s2 = "send_shell_exec" fullword wide
		$s3 = "send_connections_get" fullword wide
		$a1 = "Select * from Win32_PerfRawData_PerfProc_Process where IDProcess = '" fullword wide
		$a2 = "Select * from Win32_Process WHERE handle =" fullword wide
		$a3 = "Select * from Win32_Process where ProcessId=" fullword wide
		$a4 = "Select * from Win32_ComputerSystem" fullword wide
		$a5 = "The service is in the process of being continued" fullword wide
		$a6 = "tcpdump" fullword wide
		$a7 = "memdump" fullword wide
		$a8 = "<val1>Processor</val1>" fullword wide
		$a9 = "Win32 share process" fullword wide

	condition:
		uint16(0)==0x5a4d and filesize <1000KB and (1 of ($x*) or (2 of ($s*) and 2 of ($a*)) or 7 of them )
}