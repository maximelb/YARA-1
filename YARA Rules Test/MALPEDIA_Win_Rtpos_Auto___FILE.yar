rule MALPEDIA_Win_Rtpos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "77dcd653-95cb-55c4-91a1-f9b9e9596fd3"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rtpos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.rtpos_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "4ad89a49b88ba1ea262b015470065dd4f3f20d950975a1f27ea85a4b99624bd0"
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
		$sequence_0 = { 68a8040000 8b45ec 50 e8???????? 83c408 c3 8b542408 }
		$sequence_1 = { 83e908 8d7608 660fd60f 8d7f08 8b048d74b44000 }
		$sequence_2 = { 8b0cc5c4ae4200 894de4 85c9 7455 }
		$sequence_3 = { 7619 8b4dd4 51 ff15???????? }
		$sequence_4 = { 8d45d8 50 6a00 8b4dd4 51 }
		$sequence_5 = { 85c0 752c 6a00 68???????? 68???????? 6a02 68???????? }
		$sequence_6 = { 8bec 53 8b5d08 33c9 57 33c0 8d3c9d5c654300 }
		$sequence_7 = { 33c5 8945fc c745d800000000 c745dc00000000 33c0 }
		$sequence_8 = { 2b45c4 3b45f0 7619 8b4dd4 51 ff15???????? }
		$sequence_9 = { 6bc030 03048db86a4300 50 ff15???????? 5d c3 }

	condition:
		7 of them and filesize <507904
}