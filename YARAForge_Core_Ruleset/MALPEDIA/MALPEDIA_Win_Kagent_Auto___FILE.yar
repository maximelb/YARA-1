rule MALPEDIA_Win_Kagent_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "03cb1012-1d40-5351-bbf3-a59896f7ae1b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kagent"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.kagent_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "0b8f6427b4a4852531dd043f44e54d80aff6015551c819a2c415062a93726e8a"
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
		$sequence_0 = { 84c9 75f9 2bc2 888c2474020000 33c9 89442440 66894c2452 }
		$sequence_1 = { e8???????? 8be5 5d c20400 8d4de8 51 c7434c00000080 }
		$sequence_2 = { 8b75e8 52 51 e8???????? 8b4508 }
		$sequence_3 = { c645fc04 884b48 0f90c1 f7d9 0bc8 51 }
		$sequence_4 = { 8bd0 2bd6 0fb70432 0fb70e 2bc1 }
		$sequence_5 = { 884608 33c9 b801000000 ba02000000 f7e2 0f90c1 f7d9 }
		$sequence_6 = { 57 ff15???????? 85c0 7514 83c604 81fe???????? 7cd7 }
		$sequence_7 = { e8???????? 894624 c6462801 8b4624 33c9 895e20 668908 }
		$sequence_8 = { 0f858cfcffff 8b542420 8d0411 39442438 8b5378 0f94c1 }
		$sequence_9 = { 50 e8???????? 83c404 8a45f3 8b4df4 64890d00000000 59 }

	condition:
		7 of them and filesize <4972544
}