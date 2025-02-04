rule SIGNATURE_BASE_Turla_Mal_Script_Jan18_1___FILE
{
	meta:
		description = "Detects Turla malicious script"
		author = "Florian Roth (Nextron Systems)"
		id = "4b550b3c-182c-5dc0-b2d2-13925c22be81"
		date = "2018-01-19"
		modified = "2023-12-05"
		reference = "https://ghostbin.com/paste/jsph7"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_turla.yar#L152-L169"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "2386abf8afdf8ed9cfd55cb3dcbb998eb732744c601fd9af701cf64c366a0e62"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "180b920e9cea712d124ff41cd1060683a14a79285d960e17f0f49b969f15bfcc"

	strings:
		$s1 = ".charCodeAt(i % " ascii
		$s2 = "{WScript.Quit();}" fullword ascii
		$s3 = ".charAt(i)) << 10) |" ascii
		$s4 = " = WScript.Arguments;var " ascii
		$s5 = "= \"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\";var i;" ascii

	condition:
		filesize <200KB and 2 of them
}