rule MALPEDIA_Win_Klrd_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "f2ac53cd-82a8-55ea-badd-f6f1aae58f93"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.klrd"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.klrd_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "0fc6f030ea4bb49d87359f96c6eceeeaeffbdd94bdee42030f76f2d7ec66a19a"
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
		$sequence_0 = { 8d85fcefffff 50 e8???????? 59 50 }
		$sequence_1 = { 8d85fcefffff 50 57 ff15???????? 57 ff15???????? }
		$sequence_2 = { e8???????? 59 50 8d85fcefffff 50 57 }
		$sequence_3 = { 3c00 0f8485020000 3c03 0f847d020000 3c09 0f8475020000 3c08 }
		$sequence_4 = { c685c0fdffff00 68ff000000 6a00 8d85c1fdffff 50 e8???????? 83c40c }
		$sequence_5 = { 59 59 ff7510 ff750c ff7508 ff35???????? ff15???????? }
		$sequence_6 = { ebcc 8a85e7feffff 8885acfcffff 80bdacfcffff08 742f }
		$sequence_7 = { 56 56 6a04 56 56 68000000c0 68???????? }
		$sequence_8 = { 59 8d7dec f3a5 8b45ec 25ff000000 8885e7feffff 3c00 }
		$sequence_9 = { ffb5b0fcffff ff15???????? 8985c8feffff 83bdc8feffff00 7515 ff15???????? }

	condition:
		7 of them and filesize <40960
}