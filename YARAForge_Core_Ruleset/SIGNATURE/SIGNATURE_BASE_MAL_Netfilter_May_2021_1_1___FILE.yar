rule SIGNATURE_BASE_MAL_Netfilter_May_2021_1_1___FILE
{
	meta:
		description = "Detects Netfilter rootkit"
		author = "Arkbird_SOLG"
		id = "0ac01eb3-435b-52b0-b8e8-ace2ebb34f60"
		date = "2020-06-18"
		modified = "2023-12-05"
		reference = "https://twitter.com/struppigel/status/1405483373280235520"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_cn_netfilter.yar#L28-L52"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "ba72bbc38c27d0c8d6eea7d513c3ca40276edd929c93abae4098639f7d7649a5"
		score = 75
		quality = 83
		tags = "FILE"
		hash1 = "63d61549030fcf46ff1dc138122580b4364f0fe99e6b068bc6a3d6903656aff0"
		hash2 = "8249e9c0ac0840a36d9a5b9ff3e217198a2f533159acd4bf3d9b0132cc079870"
		hash3 = "d64f906376f21677d0585e93dae8b36248f94be7091b01fd1d4381916a326afe"
		tlp = "White"
		adversary = "Chinese APT Group"

	strings:
		$seq1 = { 48 8b 05 a9 57 ff ff 45 33 c9 49 b8 32 a2 df 2d 99 2b 00 00 48 85 c0 74 05 49 3b c0 75 38 0f 31 48 c1 e2 20 48 8d 0d 85 57 ff ff 48 0b c2 48 33 c1 48 89 05 78 57 ff ff 66 44 89 0d 76 57 ff ff 48 8b 05 69 57 ff ff 48 85 c0 75 0a 49 8b c0 48 89 05 5a 57 ff ff 48 f7 d0 48 89 05 58 57 }
		$seq2 = { 48 83 ec 38 48 83 64 24 20 00 48 8d 05 83 4c 00 00 48 8d 15 24 d1 00 00 48 89 44 24 28 48 8d 4c 24 20 e8 4d 05 00 00 85 c0 78 16 4c 8d 05 22 d1 00 00 83 ca ff 48 8d 0d 00 d1 00 00 e8 39 05 00 00 48 83 c4 }
		$seq3 = { 45 33 c0 48 8d 4c 24 40 41 8d 50 01 ff 15 5d 62 00 00 c6 84 24 88 00 00 00 01 48 8d 84 24 88 00 00 00 48 89 46 18 48 8d 0d e2 fe ff ff 48 89 9e c0 00 00 00 48 8d 44 24 40 48 89 46 50 48 8d 44 24 30 48 89 46 48 65 48 8b 04 25 88 01 00 00 48 89 86 98 00 00 00 48 8b 86 b8 00 00 00 40 88 7e 40 c6 40 b8 06 4c 89 78 e0 48 89 58 e8 c7 40 c0 01 00 00 00 c7 40 c8 0d 00 00 00 48 89 58 d0 48 8b 86 b8 00 00 00 48 89 48 f0 48 8d 4c 24 40 48 89 48 f8 c6 40 bb e0 48 8b 43 28 48 85 c0 74 2f 48 8b 48 10 48 85 c9 74 07 48 21 78 10 4c 8b f1 48 8b 08 48 85 c9 74 06 48 21 38 48 8b e9 48 8b 48 08 48 85 c9 74 08 48 83 60 08 00 48 8b f9 48 8b d6 49 8b cf ff 15 74 61 00 00 3d 03 01 00 00 75 19 48 83 64 24 20 00 48 8d 4c 24 40 41 b1 01 45 33 c0 33 d2 ff 15 64 61 00 00 48 8b 43 28 48 85 c0 74 1a 4d }
		$seq4 = { 8b 84 24 80 00 00 00 48 8d 54 24 38 48 8b 4c 24 30 44 8b ce 89 44 24 28 45 33 c0 48 89 7c 24 20 ff 15 66 2e 00 00 48 8b 4c 24 30 8b d8 ff 15 49 2e 00 00 48 8b 4c 24 30 ff 15 26 2d 00 00 8b }
		$s1 = "%sc=%s" fullword ascii
		$s2 = { 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 }
		$s3 = "NETIO.SYS" fullword ascii

	condition:
		uint16(0)==0x5a4d and filesize >20KB and filesize <1000KB and (3 of ($seq*) or 2 of ($s*))
}