rule MALPEDIA_Win_Dairy_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6e188396-140d-58db-bd0e-fbec36fd2177"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dairy"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dairy_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "549c203eee4759a62625d82431309a24967248eb704aef7aff9b67e4e84189f3"
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
		$sequence_0 = { 5b 81c48c050000 c3 668b15???????? }
		$sequence_1 = { 68???????? 52 e8???????? 83c40c 85c0 752e }
		$sequence_2 = { 83c408 8bc6 5f 5e 5d 81c424030000 c3 }
		$sequence_3 = { be01000000 5b 57 ff15???????? 55 e8???????? 83c404 }
		$sequence_4 = { 8d542418 52 57 e8???????? 85c0 7414 6a00 }
		$sequence_5 = { 4b 81cb00fcffff 43 2bc3 }
		$sequence_6 = { 85c0 0f8ef6000000 8b550c 53 56 52 e8???????? }
		$sequence_7 = { f3a5 8bca 8d54243c 83e103 f3a4 83c9ff }
		$sequence_8 = { 49 51 8d8c2408010000 51 53 e8???????? 83c40c }
		$sequence_9 = { 81e3ff030080 7908 4b 81cb00fcffff 43 2bc3 33ff }

	condition:
		7 of them and filesize <212992
}