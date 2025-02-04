rule MALPEDIA_Win_Miancha_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5e7fc19e-d4d3-5751-a42a-778cf2bcb637"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.miancha"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.miancha_auto.yar#L1-L119"
		license_url = "N/A"
		logic_hash = "1f67b71b2562c78fd331e78fe99dcc1e4206e3c62481b807645f41343dd343bc"
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
		$sequence_0 = { 7412 8d542418 52 ff15???????? }
		$sequence_1 = { 6803000080 ff15???????? 85c0 741f 6a00 }
		$sequence_2 = { 8b15???????? 894808 8a0d???????? 89500c 884810 }
		$sequence_3 = { 40 50 56 8b35???????? 6a02 6a00 }
		$sequence_4 = { 85f6 7412 8d542418 52 ff15???????? 50 }
		$sequence_5 = { ff15???????? 50 ffd6 85c0 741a }
		$sequence_6 = { 8d542418 52 ff15???????? 50 ffd6 85c0 }
		$sequence_7 = { 50 68???????? e8???????? 33f6 83c408 }
		$sequence_8 = { 8910 8b15???????? 894804 8b0d???????? 895008 8a15???????? }
		$sequence_9 = { 8910 8b15???????? 894804 8b0d???????? 895008 8a15???????? 89480c }

	condition:
		7 of them and filesize <376832
}