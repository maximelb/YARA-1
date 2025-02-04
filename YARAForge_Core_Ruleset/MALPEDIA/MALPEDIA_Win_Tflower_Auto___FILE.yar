rule MALPEDIA_Win_Tflower_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b4660b68-51d0-51ac-bbdd-acf4449bc6d1"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tflower"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.tflower_auto.yar#L1-L158"
		license_url = "N/A"
		logic_hash = "82eb88790bbfb711d9ea01573d045bd4c38f5ceb308c5ccacf5ea018abeab10b"
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
		$sequence_0 = { 0001 0200 0103 0303 }
		$sequence_1 = { 0001 7708 00f3 7608 }
		$sequence_2 = { 0002 7408 00f7 7308 }
		$sequence_3 = { 001a 0c05 003c0c 05004e0c05 }
		$sequence_4 = { 0008 7408 0002 7408 }
		$sequence_5 = { c1e104 0fb6d0 8b84248c000000 c1e204 8baa406f4f00 }
		$sequence_6 = { 000f 7708 0001 7708 }
		$sequence_7 = { c7405420164600 eb5e 57 e8???????? }
		$sequence_8 = { 3bf7 72e3 5b 5f b001 5e }
		$sequence_9 = { 0010 740b 0021 740b }
		$sequence_10 = { 0fb6c0 330c85c0fe4e00 0fb6c3 8b5f28 330c85c0fa4e00 33f1 8d0411 }
		$sequence_11 = { 8b75fc 8b7df4 c60301 eb06 8b75fc 8b7df4 }
		$sequence_12 = { 894c2448 7436 8b442410 8d90c8795000 }
		$sequence_13 = { 330c8520dd4e00 8b442414 c1e818 330c8520d94e00 8b44242c 0fb6c0 }
		$sequence_14 = { 6a35 eb2b 8bfb eb04 8b442414 ff742420 }
		$sequence_15 = { 000b 8605???????? 007885 0500788605 }

	condition:
		7 of them and filesize <6578176
}