rule MALPEDIA_Win_Mystic_Stealer_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "677c1a33-ba88-5fd2-bb60-e482ebad5ee5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mystic_stealer"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.mystic_stealer_auto.yar#L1-L113"
		license_url = "N/A"
		logic_hash = "7ef3f130d7f708fe480ce6294f73f2aa94b8d0f4c6423ffb91a1e80eb925cec4"
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
		$sequence_0 = { 8b461c 42 8b4e08 895614 8a4007 88040a 8b5614 }
		$sequence_1 = { 0fb7c7 eb0b 8d4203 8986bc160000 }
		$sequence_2 = { 6a02 5d 8b4774 3d06010000 }
		$sequence_3 = { 0fb7d8 668bc3 66d3e0 660bc6 0fb7c0 }
		$sequence_4 = { eb15 8d4503 8987bc160000 8d4304 }
		$sequence_5 = { 668b476c 66890451 85f6 741a 8b4f6c }
		$sequence_6 = { 668bc2 8d5f14 66d3e0 8b0b 660bc6 }
		$sequence_7 = { eb0c 8d5103 0fb7c0 8996bc160000 0fb7c8 }
		$sequence_8 = { 8a86b9160000 88040a b110 2a8ebc160000 8b86bc160000 ff4614 }
		$sequence_9 = { 02c2 03cb 0fb6c0 8a843800010000 }

	condition:
		7 of them and filesize <512000
}