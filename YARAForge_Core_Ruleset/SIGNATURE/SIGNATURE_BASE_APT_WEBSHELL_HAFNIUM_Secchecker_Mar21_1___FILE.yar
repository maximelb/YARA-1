rule SIGNATURE_BASE_APT_WEBSHELL_HAFNIUM_Secchecker_Mar21_1___FILE
{
	meta:
		description = "Detects HAFNIUM SecChecker webshell"
		author = "Florian Roth (Nextron Systems)"
		id = "73db3d78-7ece-53be-9efb-d19801993d5e"
		date = "2021-03-05"
		modified = "2023-12-05"
		reference = "https://twitter.com/markus_neis/status/1367794681237667840"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_hafnium.yar#L18-L33"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "e0e4df860bdde7d5c277f596535c493d926095be6f46f6ba41b6177afbfc5cd9"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "b75f163ca9b9240bf4b37ad92bc7556b40a17e27c2b8ed5c8991385fe07d17d0"

	strings:
		$x1 = "<%if(System.IO.File.Exists(\"c:\\\\program files (x86)\\\\fireeye\\\\xagt.exe" ascii
		$x2 = "\\csfalconservice.exe\")){Response.Write( \"3\");}%></head>" ascii fullword

	condition:
		uint16(0)==0x253c and filesize <1KB and 1 of them or 2 of them
}