rule MALPEDIA_Win_Apocalipto_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ee7a0f0d-5a8b-59ea-a6c9-35fc5d51d457"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.apocalipto"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.apocalipto_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "ab10b935b7f8e9ea80933c4818fa1b5859216a7e2d022a7818f118074140bb2a"
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
		$sequence_0 = { 880e b967666666 89d8 f7e9 89d1 c1f902 }
		$sequence_1 = { 8817 41 47 39f1 75f5 c6040800 5b }
		$sequence_2 = { c7042400000000 ff15???????? 52 8985ccf3ffff e8???????? 2500f0ffff 8d9800f0ffff }
		$sequence_3 = { 8b5584 29f2 89542404 893c24 e8???????? c745e400000000 }
		$sequence_4 = { 8b4154 89442408 895c2404 893424 }
		$sequence_5 = { 83ec2c 8b4d08 8b450c 85c0 0f849d000000 }
		$sequence_6 = { e8???????? 8d95e8f7ffff 89542404 893c24 e8???????? 89c2 85c0 }
		$sequence_7 = { 8d3c10 31c9 8a140b 8817 }
		$sequence_8 = { 891c24 ff15???????? 83ec08 a3???????? 85c0 0f8497080000 }
		$sequence_9 = { 0f84cb080000 c7442404???????? 891c24 ff15???????? 83ec08 a3???????? 85c0 }

	condition:
		7 of them and filesize <212992
}