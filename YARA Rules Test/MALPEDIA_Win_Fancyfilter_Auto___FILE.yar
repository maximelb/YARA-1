rule MALPEDIA_Win_Fancyfilter_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "80aed11c-235c-5a1c-926a-79da2aeef3b0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fancyfilter"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.fancyfilter_auto.yar#L1-L112"
		license_url = "N/A"
		logic_hash = "3c31ea55e7982b34390b9c81f5913450958243c449d75663ce6d5f15ca3bbd38"
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
		$sequence_0 = { 740a 66833800 7404 b001 eb02 }
		$sequence_1 = { a1???????? 83c012 50 ff15???????? }
		$sequence_2 = { 8b07 83e810 50 83c610 56 }
		$sequence_3 = { ff15???????? 83c420 83f803 7409 83f806 }
		$sequence_4 = { 83c012 50 ffd6 a1???????? }
		$sequence_5 = { 85c0 750d 8b472c a801 7406 83c804 }
		$sequence_6 = { 85c0 740a 66833800 7404 b001 eb02 }
		$sequence_7 = { 81e3ffffff00 ff15???????? 50 ff15???????? }
		$sequence_8 = { 85c0 740a 66833800 7404 b001 }
		$sequence_9 = { b805400080 c20400 56 8b742408 }

	condition:
		7 of them and filesize <169984
}