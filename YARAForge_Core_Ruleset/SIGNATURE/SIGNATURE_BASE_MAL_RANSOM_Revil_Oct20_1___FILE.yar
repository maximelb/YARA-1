rule SIGNATURE_BASE_MAL_RANSOM_Revil_Oct20_1___FILE
{
	meta:
		description = "Detects REvil ransomware"
		author = "Florian Roth (Nextron Systems)"
		id = "0c85a2cc-3487-577f-bd12-e3effd8fc811"
		date = "2020-10-13"
		modified = "2023-12-05"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_ransom_revil.yar#L2-L23"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "756e49362c01abbca3208967630f09ed957e5c51956e0e5210b0167590582a82"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "5966c25dc1abcec9d8603b97919db57aac019e5358ee413957927d3c1790b7f4"
		hash2 = "f66027faea8c9e0ff29a31641e186cbed7073b52b43933ba36d61e8f6bce1ab5"
		hash3 = "f6857748c050655fb3c2192b52a3b0915f3f3708cd0a59bbf641d7dd722a804d"
		hash4 = "fc26288df74aa8046b4761f8478c52819e0fca478c1ab674da7e1d24e1cfa501"

	strings:
		$op1 = { 0f 8c 74 ff ff ff 33 c0 5f 5e 5b 8b e5 5d c3 8b }
		$op2 = { 8d 85 68 ff ff ff 50 e8 2a fe ff ff 8d 85 68 ff }
		$op3 = { 89 4d f4 8b 4e 0c 33 4e 34 33 4e 5c 33 8e 84 }
		$op4 = { 8d 85 68 ff ff ff 50 e8 05 06 00 00 8d 85 68 ff }
		$op5 = { 8d 85 68 ff ff ff 56 57 ff 75 0c 50 e8 2f }

	condition:
		uint16(0)==0x5a4d and filesize <400KB and 2 of them or 4 of them
}