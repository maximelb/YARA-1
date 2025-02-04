rule MALPEDIA_Win_Sunorcal_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8d478635-7b1a-5ec4-85a6-3854fefcfed4"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sunorcal"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.sunorcal_auto.yar#L1-L125"
		license_url = "N/A"
		logic_hash = "58249461fa7cf2580b3033b5e590d54e14d2db390f8c7cf00dbe39cb0b927df2"
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
		$sequence_0 = { 6a03 e8???????? cc 55 8bec 83ec0c a1???????? }
		$sequence_1 = { c21000 8b442404 8b00 813863736de0 752a 83781003 7524 }
		$sequence_2 = { 5e 5b c21000 8b442404 8b00 813863736de0 752a }
		$sequence_3 = { ff15???????? 33c0 c3 c3 55 8bec }
		$sequence_4 = { 7c02 eb0e e8???????? e8???????? 85c0 }
		$sequence_5 = { 5b c21000 8b442404 8b00 813863736de0 }
		$sequence_6 = { 68b7000000 ff15???????? 6a64 68???????? }
		$sequence_7 = { 5b c21000 8b442404 8b00 813863736de0 752a 83781003 }
		$sequence_8 = { ff15???????? 68b7000000 ff15???????? 6a64 68???????? 6a67 }
		$sequence_9 = { 68???????? ff15???????? 33c0 c3 c3 55 8bec }

	condition:
		7 of them and filesize <172032
}