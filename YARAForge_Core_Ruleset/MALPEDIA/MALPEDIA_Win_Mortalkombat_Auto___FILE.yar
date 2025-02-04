rule MALPEDIA_Win_Mortalkombat_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5bbf17fe-00b4-5a92-b5e3-f942b94b6ce0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mortalkombat"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.mortalkombat_auto.yar#L1-L116"
		license_url = "N/A"
		logic_hash = "7d4e235b241a7bc491c490ef8ff26987513d97053d43652b54aa2deceb4dd9ea"
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
		$sequence_0 = { 33d2 ad 3382b96d4000 ab 83c204 }
		$sequence_1 = { 6a00 6803800000 ff75fc e8???????? 83f800 7e35 6a00 }
		$sequence_2 = { 2bc1 81ebb979379e 8bc8 c1e104 }
		$sequence_3 = { 83f8ff 7402 eb67 6a00 6a00 6a02 }
		$sequence_4 = { e8???????? 50 ff75ac e8???????? 8945a4 33c0 50 }
		$sequence_5 = { 803d????????01 7519 68???????? 68???????? 68???????? }
		$sequence_6 = { c705????????f4010000 68???????? e8???????? a3???????? a0???????? }
		$sequence_7 = { ff7514 6a01 6a00 ff7510 ff75f8 }
		$sequence_8 = { 68???????? e8???????? 83c710 6a10 }
		$sequence_9 = { 50 e8???????? ebd8 8b45bc }

	condition:
		7 of them and filesize <1224704
}