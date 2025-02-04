rule MALPEDIA_Win_Rhttpctrl_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "22fa66be-3212-5731-af64-75e4d7422a17"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rhttpctrl"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.rhttpctrl_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "1c3d2b43c54e91473434d199f4328e6fb482c73192965602da658da1f5036d20"
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
		$sequence_0 = { e8???????? 83c404 833d????????ff 7533 ff15???????? 68???????? c705????????dcfb4100 }
		$sequence_1 = { e8???????? 8b404c 83b8a800000000 750e 8b04bd30424200 807c302900 741d }
		$sequence_2 = { ffb5dcfbffff c785d8fbffff10fc4100 ff15???????? 33c0 }
		$sequence_3 = { c645d800 68???????? 8d45d8 660fd645e9 }
		$sequence_4 = { 8be5 5d c3 68???????? ff15???????? 833d????????00 b301 }
		$sequence_5 = { 3bf1 756e 8b4bf0 8d73f0 8b01 ff5010 397e0c }
		$sequence_6 = { 8b08 85c9 7407 395004 }
		$sequence_7 = { 50 8d842498000000 50 e8???????? 83cbff 85c0 }
		$sequence_8 = { 50 56 ff15???????? 85c0 7536 8b4714 8b35???????? }
		$sequence_9 = { 57 e8???????? ffb5f8feffff 8d85fcfeffff 50 }

	condition:
		7 of them and filesize <339968
}