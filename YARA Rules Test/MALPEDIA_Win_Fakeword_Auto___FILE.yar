rule MALPEDIA_Win_Fakeword_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "dff35d24-3d8a-5dd3-be0c-60e6ee2ac528"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fakeword"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.fakeword_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "ba7599fef3200798ceac9b8a2a397ab651b3acac17ae30ecdd8eedb5f787592d"
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
		$sequence_0 = { 52 68???????? a3???????? 890d???????? c744240c10000000 c605????????11 c605????????22 }
		$sequence_1 = { eb03 8b7de8 8d14b6 893d???????? }
		$sequence_2 = { 7516 8b0a 8b6f34 25ff0f0000 03c3 03c1 }
		$sequence_3 = { 6a00 6a10 8d7e14 56 6a04 }
		$sequence_4 = { c684247603000031 754d 8d442454 8d8c2477030000 50 56 }
		$sequence_5 = { 03c3 89442410 8b4804 85c9 750b 8b480c }
		$sequence_6 = { 8b4701 8d4f09 8d743809 56 51 ff15???????? 83c408 }
		$sequence_7 = { 8d1c02 3bd9 72f1 c6040f00 }
		$sequence_8 = { b808000000 5e 83c440 c3 81fea1000000 7528 }
		$sequence_9 = { 57 33c0 85d2 7e19 8bca 8bf3 8be9 }

	condition:
		7 of them and filesize <98304
}