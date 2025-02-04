rule SIGNATURE_BASE_Bdcli100
{
	meta:
		description = "Webshells Auto-generated - file bdcli100.exe"
		author = "Florian Roth (Nextron Systems)"
		id = "c74e8822-9556-5596-a130-c6e0120d7103"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/thor-webshells.yar#L7726-L7738"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "b12163ac53789fb4f62e4f17a8c2e028"
		logic_hash = "48c70413c71d5a84f8cea48c77935b7cc26d9e1348d7ab257de4540d69f0f817"
		score = 75
		quality = 85
		tags = ""
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$s5 = "unable to connect to "
		$s8 = "backdoor is corrupted on "

	condition:
		all of them
}