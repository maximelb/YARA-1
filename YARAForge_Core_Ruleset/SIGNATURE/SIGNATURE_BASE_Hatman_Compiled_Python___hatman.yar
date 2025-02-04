rule SIGNATURE_BASE_Hatman_Compiled_Python___hatman
{
	meta:
		description = "Detects Hatman malware"
		author = "DHS/NCCIC/ICS-CERT"
		id = "fd156669-72b4-59a5-8f36-aac21d7b3105"
		date = "2017-12-19"
		modified = "2023-12-05"
		reference = "https://ics-cert.us-cert.gov/MAR-17-352-01-HatMan%E2%80%94Safety-System-Targeted-Malware"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_hatman.yar#L86-L95"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "a18018e4c6ea5b7ab6e1dbdc050e565f66520676565db6d352f58a786097960f"
		score = 75
		quality = 85
		tags = ""

	condition:
		SIGNATURE_BASE_Hatman_Nullsub_PRIVATE and SIGNATURE_BASE_Hatman_Setstatus_PRIVATE and SIGNATURE_BASE_Hatman_Dividers_PRIVATE
}