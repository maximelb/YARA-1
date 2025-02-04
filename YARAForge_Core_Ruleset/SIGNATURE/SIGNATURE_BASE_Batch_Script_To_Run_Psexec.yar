rule SIGNATURE_BASE_Batch_Script_To_Run_Psexec
{
	meta:
		description = "Detects malicious batch file from NCSC report"
		author = "NCSC"
		id = "1fbeeec8-a5bd-569e-b435-c7d82d32e47b"
		date = "2018-04-06"
		modified = "2023-12-05"
		reference = "https://www.ncsc.gov.uk/alerts/hostile-state-actors-compromising-uk-organisations-focus-engineering-and-industrial-control"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_ncsc_report_04_2018.yar#L91-L107"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "b7d7c4bc8f9fd0e461425747122a431f93062358ed36ce281147998575ee1a18"
		logic_hash = "9bdaa14aa535c178914f83c12b23484162f085c6fc6041d379268546ee99f462"
		score = 75
		quality = 85
		tags = ""

	strings:
		$ = "Tokens=1 delims=" ascii
		$ = "SET ws=%1" ascii
		$ = "Checking %ws%" ascii
		$ = "%TEMP%\\%ws%ns.txt" ascii
		$ = "ps.exe -accepteula" ascii

	condition:
		3 of them
}