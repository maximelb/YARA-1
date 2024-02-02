rule MALPEDIA_Win_Isr_Stealer_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "f92134ff-d8ee-58cb-8cb8-468d7205306f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.isr_stealer"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.isr_stealer_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "75691989209029cb7a637cf5df87a857ef3ef18b6fe3194f56cba1ecab86658c"
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
		$sequence_0 = { fb b05e 2bc1 e8???????? 661e }
		$sequence_1 = { 08ac22c115978d 0e e8???????? 07 }
		$sequence_2 = { 1c8b 53 2456 2bd1 807e6543 }
		$sequence_3 = { 46 1e 301b 15c2c8c807 d6 12d8 }
		$sequence_4 = { 8d16 b205 07 d32cb6 08ac22c115978d 0e e8???????? }
		$sequence_5 = { a7 8d16 b205 07 d32cb6 08ac22c115978d }
		$sequence_6 = { 07 fb b05e 2bc1 e8???????? }
		$sequence_7 = { 8d16 b205 07 d32cb6 08ac22c115978d 0e }
		$sequence_8 = { 07 d32cb6 08ac22c115978d 0e e8???????? }
		$sequence_9 = { e8???????? 07 fb b05e 2bc1 e8???????? 661e }

	condition:
		7 of them and filesize <540672
}