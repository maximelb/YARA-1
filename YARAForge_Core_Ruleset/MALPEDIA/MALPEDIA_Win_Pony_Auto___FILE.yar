rule MALPEDIA_Win_Pony_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "d90fd047-9438-55a9-9e35-1d6c2ea6d18d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pony"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.pony_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "8fcd4026be1a9e152c2bd589ec65b90e934cc06d61e86dd6cd06c58ac6d41a1e"
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
		$sequence_0 = { c20400 55 89e5 83ec18 53 }
		$sequence_1 = { c745f400000000 8d45f8 50 ff7508 6a00 ff15???????? }
		$sequence_2 = { bfffffffff 33f9 0bf8 33fb 8d941792cc0c8f 03560c }
		$sequence_3 = { ff75e8 ff7508 e8???????? 23d8 ff75ec e8???????? }
		$sequence_4 = { f7d0 50 ff7508 e8???????? c9 c20400 }
		$sequence_5 = { ff7514 e8???????? eb0d 68???????? }
		$sequence_6 = { c9 c20400 55 8bec 83c4fc ff7514 ff7510 }
		$sequence_7 = { ff75c8 e8???????? ff75c4 e8???????? ff75bc }
		$sequence_8 = { b9ffffffff f2ae 3807 75c5 6a1a ff7508 }
		$sequence_9 = { e8???????? ff7510 6a18 ff7508 e8???????? ff7510 }

	condition:
		7 of them and filesize <262144
}