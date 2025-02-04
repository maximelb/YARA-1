rule MALPEDIA_Win_Unidentified_006_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1d29f273-95a4-58bd-87cd-6ac677036b5c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_006"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.unidentified_006_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "dd723dd2c53afa22a9c28d9c9c06ec724a63cc0cfcf78b59a425b4cdf0fd8bc1"
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
		$sequence_0 = { 3907 7417 833e00 7408 ff36 e8???????? 59 }
		$sequence_1 = { 6a00 8d45fc 897dfc 50 8d45f8 50 6a00 }
		$sequence_2 = { 85c9 7410 8b55f4 85d2 7409 e8???????? 894708 }
		$sequence_3 = { 8bf0 57 56 e8???????? 83c410 33c0 }
		$sequence_4 = { 85f6 7410 57 8b7d0c 2bf8 }
		$sequence_5 = { 0fb6875c204000 47 03c6 83c603 25ff000000 }
		$sequence_6 = { eb45 8b7510 85f6 743c }
		$sequence_7 = { 8b4dfc 83c40c 8bf7 8bd7 85c9 7421 83ff0c }
		$sequence_8 = { 33ff 53 ff15???????? 53 ff15???????? }
		$sequence_9 = { 57 6a40 8bc2 33ff 6800300000 50 }

	condition:
		7 of them and filesize <40960
}