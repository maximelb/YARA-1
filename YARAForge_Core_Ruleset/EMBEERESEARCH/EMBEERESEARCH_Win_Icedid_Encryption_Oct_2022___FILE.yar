rule EMBEERESEARCH_Win_Icedid_Encryption_Oct_2022___FILE
{
	meta:
		description = "No description has been set in the source file - EmbeeResearch"
		author = "Embee_Research @ Huntress"
		id = "1ecbb3b3-dfc1-5d69-807d-3a44c39a3536"
		date = "2022-10-14"
		modified = "2023-10-18"
		reference = "https://github.com/embee-research/Yara-detection-rules/"
		source_url = "https://github.com/embee-research/Yara-detection-rules//blob/d4226e586a49cd4d1eede9a58738509689cf059f/Rules/2022/win_icedid_encryption_oct_2022.yar#L1-L18"
		license_url = "N/A"
		logic_hash = "da657cf87e043a1fdb2ec683de8a7a12acb8c8f1c24034bb376d525c0a1c5740"
		score = 75
		quality = 75
		tags = "FILE"

	strings:
		$IcedID = {41 0f b6 d3 44 8d 42 01 83 e2 03 41 83 e0 03 42 8a 44 84 40 02 44 94 40 43 32 04 33 42 8b 4c 84 40 41 88 04 1b 83 e1 07 8b 44 94 40 49 ff c3 d3 c8 ff c0 89 44 94 40 83 e0 07}

	condition:
		$IcedID
}