rule SIGNATURE_BASE_Stonedrill_Main_Sub___FILE
{
	meta:
		description = "Rule to detect StoneDrill (decrypted) samples"
		author = "Kaspersky Lab"
		id = "92f53e6a-8f49-5ffa-8c16-3ec3e6f2bdcd"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://securelist.com/blog/research/77725/from-shamoon-to-stonedrill/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_stonedrill.yar#L43-L56"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "794094c0cbb81f6f971e16de36d444351b17cf38a91d8210f914b80da7d9ed26"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "d01781f1246fd1b64e09170bd6600fe1"
		hash2 = "ac3c25534c076623192b9381f926ba0d"
		version = "1.0"

	strings:
		$code = {B8 08 00 FE 7F FF 30 8F 44 24 ?? 68 B4 0F 00 00 FF 15 ?? ?? ?? 00 B8 08 00 FE 7F FF 30 8F 44 24 ?? 8B ?? 24 [1 - 4] 2B ?? 24 [6] F7 ?1 [5 - 12] 00}

	condition:
		uint16(0)==0x5A4D and $code and filesize <5000000
}