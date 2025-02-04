rule SIGNATURE_BASE_APT_Crywiper_Dec22
{
	meta:
		description = "Detects CryWiper malware samples"
		author = "Florian Roth (Nextron Systems)"
		id = "d56ccf4e-30ba-5308-ad68-ffc2ae5a1718"
		date = "2022-12-05"
		modified = "2023-12-05"
		reference = "https://securelist-ru.translate.goog/novyj-troyanec-crywiper/106114/?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=en"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_ru_crywiper.yar#L2-L19"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "7c22e02ed996cd820ed87a0c5d50e3264629cdd887aad4ea466cadeccaee2b2f"
		score = 75
		quality = 85
		tags = ""

	strings:
		$x1 = "Software\\Sysinternals\\BrowserUpdate"
		$sx1 = "taskkill.exe /f /im MSExchange*"
		$s1 = "SYSTEM\\CurrentControlSet\\Control\\Terminal Server" ascii
		$s2 = "fDenyTSConnections" ascii

	condition:
		1 of ($x*) or all of ($s*)
}