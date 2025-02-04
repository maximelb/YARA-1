rule SIGNATURE_BASE_Hatman_Mftmsr_PRIVATE___hatman
{
	meta:
		description = "No description has been set in the source file - Signature Base"
		author = "Florian Roth"
		id = "cbbd6008-7722-5d92-bb82-73c8b2b6bea9"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_hatman.yar#L65-L73"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "a03a3f5c583843acb216a8edefceaa1e89248fe72db49bcd906d2183998b1674"
		score = 75
		quality = 85
		tags = ""

	strings:
		$mfmsr_be = { 7c 63 00 a6 }
		$mfmsr_le = { a6 00 63 7c }
		$mtmsr_be = { 7c 63 01 24 }
		$mtmsr_le = { 24 01 63 7c }

	condition:
		($mfmsr_be and $mtmsr_be) or ($mfmsr_le and $mtmsr_le)
}