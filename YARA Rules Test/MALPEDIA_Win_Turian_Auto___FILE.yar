rule MALPEDIA_Win_Turian_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ddf0a4a2-a5a9-518b-8b9f-2682f3c9390d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.turian"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.turian_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "9c66c121bddd393e74452e6591ffaf152302a762e1679695f5fb6277ed317972"
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
		$sequence_0 = { 50 ff15???????? 89450c 8bf8 33c0 }
		$sequence_1 = { e8???????? 83c404 85c0 740d 8d4c2410 51 }
		$sequence_2 = { ffd7 8b3d???????? 53 ffd7 56 ffd7 83c408 }
		$sequence_3 = { 81ec88000000 53 55 56 57 b921000000 33c0 }
		$sequence_4 = { 85c0 750a 5f 5e 5d 81c49c000000 c3 }
		$sequence_5 = { 729b 53 ff15???????? 83c404 a1???????? 85c0 750f }
		$sequence_6 = { 72ba 68???????? ff15???????? 5f 5e 5d 83c8ff }
		$sequence_7 = { 66a3???????? 5b c3 6a3f 50 }
		$sequence_8 = { 7403 c60000 68???????? 56 ffd7 85c0 }
		$sequence_9 = { ffd5 85c0 750e 8d4f46 8d5642 }

	condition:
		7 of them and filesize <645120
}