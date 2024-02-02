rule MALPEDIA_Win_Vhd_Ransomware_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1b802015-a125-5833-acd7-30aed08841d8"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vhd_ransomware"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.vhd_ransomware_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "32d97d3009fbca3c4f84bd22721b2479eac7cefb08b428240c2e9ebde9b435cb"
		score = 75
		quality = 75
		tags = "FILE"
		version = "1"
		tool = "yara-signator v0.6.0"
		signator_config = "callsandjumps;datarefs;binvalue"
		malpedia_rule_date = "20231130"
		malpedia_hash = "fc8a0e9f343f6d6ded9e7df1a64dac0cc68d7351"
		malpedia_version = "20230808"
		malpedia_license = "CC BY-SA 4.0"
		malpedia_sharing = "TLP:WHITE"

	strings:
		$sequence_0 = { 8b450c 4a 3bd0 7d10 8bc8 }
		$sequence_1 = { 68???????? 8d45f4 50 c745f4d8514100 e8???????? cc 8bff }
		$sequence_2 = { e8???????? 8b8514e6ffff 48 83c404 4b 898514e6ffff 85c0 }
		$sequence_3 = { f3ab 8b8dccfcffff 890a 85c9 7e98 8d4a04 }
		$sequence_4 = { c1eb18 0fb69b98744100 c1e308 0bda 8b55cc c1ea08 0fb6d2 }
		$sequence_5 = { 66895c2460 897c241c c7442420c05d4000 897c2424 897c2428 }
		$sequence_6 = { 7d10 895c8204 ff02 8bde 33f6 8bcb 0bce }
		$sequence_7 = { e8???????? b9c9000000 8bf0 8dbd7cf6ffff }
		$sequence_8 = { 46 83fe40 7cee 8d4d9c 51 8d8d84baffff e8???????? }
		$sequence_9 = { ff15???????? 32c0 e9???????? 6a00 8d8588b4ffff 50 6800200000 }

	condition:
		7 of them and filesize <275456
}