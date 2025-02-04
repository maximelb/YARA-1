rule MALPEDIA_Win_Keymarble_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "25735efc-9b7e-5c4e-843b-1618e0690062"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.keymarble"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.keymarble_auto.yar#L1-L113"
		license_url = "N/A"
		logic_hash = "6744b9f4fc70c631928ab5473ea2bd7eecc2671462bf651b9238352600b5d250"
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
		$sequence_0 = { ff15???????? 50 e8???????? 83c404 56 6a40 }
		$sequence_1 = { ff15???????? 50 e8???????? 83c404 56 6a40 ff15???????? }
		$sequence_2 = { e8???????? 83c404 56 6a40 ff15???????? }
		$sequence_3 = { 83c404 e8???????? 8d3470 81e6ffffff7f }
		$sequence_4 = { 50 ff15???????? 68???????? 6a40 }
		$sequence_5 = { 83c408 85c0 7407 bb7a452301 }
		$sequence_6 = { 50 e8???????? 83c404 56 6a40 }
		$sequence_7 = { ff15???????? 50 ff15???????? 68???????? 6a40 }
		$sequence_8 = { 83c404 56 6a40 ff15???????? }
		$sequence_9 = { 6a00 6a03 6800000040 57 ffd6 }

	condition:
		7 of them and filesize <1146880
}