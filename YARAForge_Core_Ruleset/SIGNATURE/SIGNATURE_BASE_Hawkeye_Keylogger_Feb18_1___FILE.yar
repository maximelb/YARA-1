rule SIGNATURE_BASE_Hawkeye_Keylogger_Feb18_1___FILE
{
	meta:
		description = "Semiautomatically generated YARA rule"
		author = "Florian Roth (Nextron Systems)"
		id = "6b4b447f-43d6-5774-a1b9-d53b40364732"
		date = "2018-02-12"
		modified = "2023-01-06"
		reference = "https://app.any.run/tasks/ae2521dd-61aa-4bc7-b0d8-8c85ddcbfcc9"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_hawkeye.yar#L2-L18"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "39037ccb90b747c098fbf5a504aee4a6a716901ff5841ae328ea40d06cc3fcfd"
		score = 90
		quality = 85
		tags = "FILE"
		hash1 = "bb58922ad8d4a638e9d26076183de27fb39ace68aa7f73adc0da513ab66dc6fa"

	strings:
		$s1 = "UploadReportLogin.asmx" fullword wide
		$s2 = "tmp.exe" fullword wide
		$s3 = "%appdata%\\" wide

	condition:
		uint16(0)==0x5a4d and filesize <2000KB and all of them
}