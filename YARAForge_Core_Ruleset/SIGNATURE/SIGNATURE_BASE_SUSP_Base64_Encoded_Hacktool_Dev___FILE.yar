rule SIGNATURE_BASE_SUSP_Base64_Encoded_Hacktool_Dev___FILE
{
	meta:
		description = "Detects a suspicious base64 encoded keyword"
		author = "Florian Roth (Nextron Systems)"
		id = "6dc7db4b-a614-51e4-a9a5-f869154dbbb1"
		date = "2020-06-10"
		modified = "2023-12-05"
		reference = "https://twitter.com/cyb3rops/status/1270626274826911744"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_susp_obfuscation.yar#L101-L121"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "7345a528a12f87e5cbcabccf649566a038dd2115e8aec4f39599e357c8c6d57f"
		score = 65
		quality = 85
		tags = "FILE"

	strings:
		$ = "QGdlbnRpbGtpd2" ascii wide
		$ = "BnZW50aWxraXdp" ascii wide
		$ = "AZ2VudGlsa2l3a" ascii wide
		$ = "QGhhcm1qMH" ascii wide
		$ = "BoYXJtajB5" ascii wide
		$ = "AaGFybWowe" ascii wide
		$ = "IEBzdWJ0ZW" ascii wide
		$ = "BAc3VidGVl" ascii wide
		$ = "gQHN1YnRlZ" ascii wide

	condition:
		filesize <6000KB and 1 of them
}