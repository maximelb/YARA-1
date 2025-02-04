rule MALPEDIA_Win_Apocalypse_Ransom_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "d42c3028-47d8-5c2a-8245-ee48597fdb68"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.apocalypse_ransom"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.apocalypse_ransom_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "3006a8aede4427b243aedfb686311f3de66b1be38f627de23e7cfc996b17033d"
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
		$sequence_0 = { ff15???????? 68???????? 8d84240c040000 50 ff15???????? 85c0 742f }
		$sequence_1 = { 83f8ff 755f 6a01 8d44240c 50 8d8c2410040000 }
		$sequence_2 = { 0bfb ff15???????? 33d2 83f802 }
		$sequence_3 = { 8d4c2410 68???????? 51 ff15???????? 83c410 6a00 6a00 }
		$sequence_4 = { ffd6 b801000000 5e 83c418 c3 33c0 }
		$sequence_5 = { 68???????? 6a00 ffd7 8bf0 85f6 7504 5f }
		$sequence_6 = { 83f8ff 7411 50 ff15???????? 8d0424 50 ff15???????? }
		$sequence_7 = { 83c40c 57 53 ff15???????? 6800800000 }
		$sequence_8 = { ffd7 85c0 7440 8b1d???????? 8b2d???????? 8b542410 8d4c2410 }
		$sequence_9 = { 6a03 6800000040 52 ffd6 }

	condition:
		7 of them and filesize <40960
}