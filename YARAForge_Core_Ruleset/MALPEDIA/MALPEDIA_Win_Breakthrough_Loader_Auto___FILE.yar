rule MALPEDIA_Win_Breakthrough_Loader_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "c04a79be-d1c6-5097-81f4-9cd0a78c5ca6"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.breakthrough_loader"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.breakthrough_loader_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "6b4d6b03c6e2480f390e69c1bdad99aa25aa8d566c5f76108e42a507f3962675"
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
		$sequence_0 = { 7e2a 8b7df8 660f1f840000000000 0fb7444e08 a900300000 740a }
		$sequence_1 = { 5d c3 8b4d14 890e 8b4d24 }
		$sequence_2 = { 8945e8 8945f8 8b4508 56 be???????? c745eca07d4400 57 }
		$sequence_3 = { 8b450c 0fb68401d86a4400 c1e804 5d }
		$sequence_4 = { 85f6 742d 83f910 8d442420 0f43442420 881418 }
		$sequence_5 = { e8???????? 33c0 c744242c07000000 8d8c2490000000 }
		$sequence_6 = { 8bc7 83e03f 6bc830 8b049540354500 f644082801 7421 57 }
		$sequence_7 = { 83e03f 6bc030 59 59 0304bd40354500 5f eb05 }
		$sequence_8 = { 8b0cbd40354500 83c410 8b7de8 89440f20 8bc6 }
		$sequence_9 = { 8b3e 8d0417 3bd0 731d 8d47ff 8906 8b4b20 }

	condition:
		7 of them and filesize <753664
}