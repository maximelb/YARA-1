rule MALPEDIA_Win_Hermes_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "61ab2fc1-04d0-5933-ac64-b12602279b7d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hermes"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.hermes_auto.yar#L1-L111"
		license_url = "N/A"
		logic_hash = "9cfed48151b17cbf55d1481eb34069ea472830263b97aa44ce683b55da6f12b5"
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
		$sequence_0 = { 6a01 6810660000 ff75fc ff15???????? }
		$sequence_1 = { ff15???????? 33d2 6a79 59 f7f1 83c261 }
		$sequence_2 = { 6a01 ff15???????? 8d45fc 50 }
		$sequence_3 = { 8b4508 83c801 50 6a01 ff75fc }
		$sequence_4 = { 8b4508 83c801 50 6a01 ff75fc ff15???????? }
		$sequence_5 = { 50 8b4508 83c801 50 }
		$sequence_6 = { 6a04 6800100000 6888130000 6a00 }
		$sequence_7 = { 50 6a01 6810660000 ff75fc ff15???????? }
		$sequence_8 = { 6800100000 6888130000 6a00 ff15???????? }
		$sequence_9 = { 50 8d45fc 50 ff15???????? 6a20 }

	condition:
		7 of them and filesize <7192576
}