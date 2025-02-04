rule SIGNATURE_BASE_Hatman_Setstatus_PRIVATE___hatman
{
	meta:
		description = "No description has been set in the source file - Signature Base"
		author = "Florian Roth"
		id = "a0619dad-7cee-585a-9246-b3d4554e512f"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_hatman.yar#L21-L28"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "264292bbc479413bf70f05b96bcea3c856906eb8c711720831bea9b887a7ffb0"
		score = 75
		quality = 85
		tags = ""

	strings:
		$preset = { 80 00 40 3c  00 00 62 80  40 00 80 3c  40 20 03 7c
                        ?? ?? 82 40  04 00 62 80  60 00 80 3c  40 20 03 7c
                        ?? ?? 82 40  ?? ?? 42 38                           }

	condition:
		$preset
}