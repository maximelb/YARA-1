rule SIGNATURE_BASE_STUXSHOP_Oscheck
{
	meta:
		description = "Identifies the OS Check function in STUXSHOP and CheshireCat"
		author = "Silas Cutler (havex@Chronicle.Security)"
		id = "24fb5c6f-d5ab-5f17-942c-b712e2c017d4"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_stuxshop.yar#L32-L47"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "c1961e54d60e34bbec397c9120564e8d08f2f243ae349d2fb20f736510716579"
		logic_hash = "3dca26e622289c2d244e3af035e892455a47daa67dbe0c6fad29d9f7403cbc6b"
		score = 75
		quality = 85
		tags = ""

	strings:
		$ = {10 F7 D8 1B C0 83 C0 ?? E9 ?? 01 00 00 39 85 7C FF FF FF 0F 85 ?? 01 00
      00 83 BD 70 FF FF FF 04 8B 8D 74 FF FF FF 75 0B 85 C9 0F 85 ?? 01 00 00 6A 05
      5E }
		$ = {01 00 00 3B FA 0F 84 ?? 01 00 00 80 7D 80 00 B1 62 74 1D 6A 0D 8D 45 80
      68 ?? ?? ?? 10 50 FF 15 ?? ?? ?? 10 83 C4 0C B1 6F 85 C0 75 03 8A 4D 8D 8B C6
}