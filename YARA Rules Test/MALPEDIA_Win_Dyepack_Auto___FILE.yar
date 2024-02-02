rule MALPEDIA_Win_Dyepack_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "66b3574f-c7a6-53f0-85d5-ab2a32e5f41d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dyepack"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dyepack_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "9d7b8dddf2871fef90109ccabdb579a142d1f80f2c5a6a3cb7a4f53499a52084"
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
		$sequence_0 = { 53 53 56 ffd7 8b442414 8b4c2410 33ed }
		$sequence_1 = { 7cb2 7f08 8b4c2410 3be9 }
		$sequence_2 = { 8b442414 8b4c2410 33ed 33ff 3bc3 7c60 7f0a }
		$sequence_3 = { 741e 8b442418 3bc3 7416 03e8 8b442414 13fb }
		$sequence_4 = { 1bc7 7815 7f08 81f900100000 }
		$sequence_5 = { 56 ff15???????? 8b8c2428100000 53 51 }
		$sequence_6 = { 3bcb 765a eb04 8b4c2410 2bcd }
		$sequence_7 = { ff15???????? 85c0 741e 8b442418 3bc3 7416 03e8 }
		$sequence_8 = { 5f 5e 5b 81c414100000 c3 8b3d???????? }
		$sequence_9 = { ffd7 8d4c2418 53 51 8d54242c }

	condition:
		7 of them and filesize <212992
}