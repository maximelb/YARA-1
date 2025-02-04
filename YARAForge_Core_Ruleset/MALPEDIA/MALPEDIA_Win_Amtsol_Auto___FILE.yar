rule MALPEDIA_Win_Amtsol_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "c4e6651d-976c-58ca-adc5-c02364c8423a"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.amtsol"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.amtsol_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "27d50e01d30776676c026a6886e9d6b54d3f1024ee993525160ca52cbcf77c05"
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
		$sequence_0 = { 33c8 234df0 8945fc 8b45f8 33cb 034e34 6a05 }
		$sequence_1 = { 53 ff7580 ff7594 ff36 }
		$sequence_2 = { 885d6f ff75d4 8d4510 50 8d4568 50 }
		$sequence_3 = { 53 8b5d0c 8bce 2bde 3b7d10 7d23 }
		$sequence_4 = { c645d543 c645d668 c645d765 c645d863 c645d96b c645da3a 885ddb }
		$sequence_5 = { 8bec 8b4508 33c9 3bc1 7504 33c0 5d }
		$sequence_6 = { ff15???????? 83f8ff 752b 8d45e8 50 c645e823 c645e92d }
		$sequence_7 = { 85c0 7524 a1???????? a3???????? a1???????? c705????????b2194100 8935???????? }
		$sequence_8 = { 0f84bf000000 56 53 50 e8???????? 56 }
		$sequence_9 = { e8???????? 8d443001 59 895df4 3818 0f8430010000 50 }

	condition:
		7 of them and filesize <335872
}