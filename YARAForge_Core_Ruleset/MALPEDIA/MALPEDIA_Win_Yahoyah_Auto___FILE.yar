rule MALPEDIA_Win_Yahoyah_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8071f7bc-1af0-58b6-8984-8add890e5a04"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.yahoyah"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.yahoyah_auto.yar#L1-L158"
		license_url = "N/A"
		logic_hash = "5a0539481a7f5653801a561ffa29165f1f4bf92248a27b13820a8f2035c6eb1c"
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
		$sequence_0 = { ff15???????? 6a02 53 6af0 }
		$sequence_1 = { 50 6800080000 ff15???????? ff15???????? }
		$sequence_2 = { 53 53 56 53 ff15???????? 68d0070000 }
		$sequence_3 = { 50 e8???????? 83c418 6a02 53 }
		$sequence_4 = { ff15???????? 6a2e 68???????? e8???????? }
		$sequence_5 = { e8???????? 59 53 53 6a03 0fb7c8 }
		$sequence_6 = { 52 c1e808 23c1 50 68???????? }
		$sequence_7 = { ff15???????? 85c0 7501 c3 56 }
		$sequence_8 = { 23d1 52 8bd0 c1ea18 52 0fb6d0 }
		$sequence_9 = { eb19 ff15???????? 0fb7c0 50 68???????? }
		$sequence_10 = { 6a1a 50 e8???????? bf???????? }
		$sequence_11 = { ff15???????? 6a3a 56 e8???????? 8bf0 83c410 }
		$sequence_12 = { 90 33c9 33c0 648b3530000000 8b760c }
		$sequence_13 = { 90 68add13441 ffb53ffbffff 6a00 e8???????? 898521f1ffff e8???????? }
		$sequence_14 = { 90 90 90 90 90 68add13441 ffb53ffbffff }

	condition:
		7 of them and filesize <483328
}