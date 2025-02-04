rule SIGNATURE_BASE_Crime_Win64_Backdoor_Bazarbackdoor1___FILE
{
	meta:
		description = "Detects BazarBackdoor injected 64-bit malware"
		author = "@VK_Intel"
		id = "1e387791-97fa-527d-87ed-68872b1891c4"
		date = "2020-04-24"
		modified = "2023-12-05"
		reference = "https://twitter.com/pancak3lullz/status/1252303608747565057"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_bazarbackdoor.yar#L1-L18"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "becb6ebc3a1be061b4f602cc188b172f59bfb6342605af68d8b38009d589f57e"
		score = 75
		quality = 85
		tags = "FILE"
		tlp = "white"

	strings:
		$str1 = "%id%"
		$start = { 48 ?? ?? ?? ?? 57 48 83 ec 30 b9 01 00 00 00 e8 ?? ?? ?? ?? 84 c0 0f ?? ?? ?? ?? ?? 40 32 ff 40 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8a d8 8b ?? ?? ?? ?? ?? 83 f9 01 0f ?? ?? ?? ?? ?? 85 c9 75 ?? c7 ?? ?? ?? ?? ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 85 c0 74 ?? b8 ff 00 00 00 e9 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? c7 ?? ?? ?? ?? ?? ?? ?? ?? ?? eb ?? 40 b7 01 40 ?? ?? ?? ?? 8a cb e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8b d8 48 ?? ?? ?? 74 ??}
		$server = {40 53 48 83 ec 20 48 8b d9 e8 ?? ?? ?? ?? 85 c0 75 ?? 0f ?? ?? ?? ?? ?? ?? 66 83 f8 50 74 ?? b9 bb 01 00 00 66 3b c1 74 ?? a8 01 74 ?? 48 8b cb e8 ?? ?? ?? ?? 84 c0 75 ?? 48 8b cb e8 ?? ?? ?? ?? b8 f6 ff ff ff eb ?? 33 c0 48 83 c4 20 5b c3}

	condition:
		uint16(0)==0x5a4d and all of them
}