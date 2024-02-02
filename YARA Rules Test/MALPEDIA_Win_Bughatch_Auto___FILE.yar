rule MALPEDIA_Win_Bughatch_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "35614cb3-a7b5-53cc-adaa-ae210fa4a880"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bughatch"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.bughatch_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "5b28b48c5896cf30a835a51ee080a086478b951d2bf5768e0498fb91c61b534d"
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
		$sequence_0 = { 51 ff15???????? 68???????? 8d9594f7ffff 52 ff15???????? }
		$sequence_1 = { 8d8594f7ffff 50 ff15???????? c745d80c000000 c745e001000000 c745dc00000000 8d4d94 }
		$sequence_2 = { 52 6a00 8b45f8 50 ff15???????? 8945ec 837dec00 }
		$sequence_3 = { 55 8bec 81ec30010000 c745e000000000 c745e860524000 }
		$sequence_4 = { 894df4 8d55e4 52 8d4594 50 6a00 6a00 }
		$sequence_5 = { 8b55ec 52 ff15???????? c745f801000000 8b45fc }
		$sequence_6 = { 7308 8b45f8 8945f0 eb06 8b4d14 894df0 8b55f0 }
		$sequence_7 = { ff15???????? 8b4de0 51 ff15???????? 8b45dc }
		$sequence_8 = { 55 8bec 81ec60030000 837d0800 0f84d2000000 6a44 6a00 }
		$sequence_9 = { e8???????? 83c40c 85c0 7407 c745fc01000000 8b45f8 50 }

	condition:
		7 of them and filesize <75776
}