rule SIGNATURE_BASE_MAL_RANSOM_Conticrypter
{
	meta:
		description = "Signature for a crypter associated with Conti"
		author = "James Quinn, Binary Defense"
		id = "f2a00655-41a2-5614-9c29-3629c93c0e95"
		date = "2021-03-17"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_ransom_conti.yar#L2-L16"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "256fbd028a91da45049e2e861e16e97201f09cb92ab049eda373c80e6a796726"
		score = 75
		quality = 85
		tags = ""
		tlp = "White"

	strings:
		$handoff1 = {4C 8D 05 ?? ?? ?? ?? 48 C7 44 24 28 00 00 00 00 C7 44 24 20 00 00 00 00 e8}
		$handoff2 = {C7 ?? 24 ?? 00 00 00 00 89 44 24 ?? C7 ?? 24 ?? ?? ?? ?? ?? C7 ?? 24 ?? 00 00 00 00 }
		$garbageLoad1 = {53 48 83 EC 20 89 CB 48 8D 0D ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 01 D8 48 83 C4 20 5B C3}
		$garbageLoad2 = {55 89 E5 83 EC 18 C7 ?? 24 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 03 45 08 52 C9 C3}

	condition:
		1 of ($handoff*) and 1 of ($garbageLoad*)
}