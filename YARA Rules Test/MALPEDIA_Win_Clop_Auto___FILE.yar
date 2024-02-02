rule MALPEDIA_Win_Clop_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "59cb28c0-0028-51c2-94ee-931d5b6fa068"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.clop"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.clop_auto.yar#L1-L188"
		license_url = "N/A"
		logic_hash = "f2736024915a6a0ca98a26d3016fbd37034bb9a8e1a0f37004991cc314f844e2"
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
		$sequence_0 = { 83c40c 6860070000 6a40 ff15???????? }
		$sequence_1 = { 6a04 6800300000 6887000000 6a00 }
		$sequence_2 = { ff15???????? 56 53 8bf8 ff15???????? 8bf0 56 }
		$sequence_3 = { 57 6a00 ff15???????? 68???????? 8bd8 }
		$sequence_4 = { ff15???????? 8bf0 56 53 ff15???????? 50 }
		$sequence_5 = { 6683e07f 6683f87f 8d642408 0f85fd0b0000 eb00 f30f7e442404 660f2815???????? }
		$sequence_6 = { 50 ff15???????? 83c40c 6860070000 }
		$sequence_7 = { ffd0 c3 8bff 55 8bec 83ec1c 8d4de4 }
		$sequence_8 = { 0f85aa010000 68???????? 8d442450 50 }
		$sequence_9 = { 8be5 5d c20400 56 ff15???????? 6a00 }
		$sequence_10 = { 8d85bcefffff 50 ff15???????? 68???????? }
		$sequence_11 = { 68???????? 68???????? e8???????? 83c424 6aff }
		$sequence_12 = { 6888130000 ffd7 6a00 6a00 6a00 68???????? }
		$sequence_13 = { ff15???????? 68???????? 8d85dcf7ffff 50 }
		$sequence_14 = { 83c408 6aff ff15???????? 33c0 }
		$sequence_15 = { 83c40c 33f6 85ff 7428 }
		$sequence_16 = { 83c424 53 50 ffd6 }
		$sequence_17 = { 6aff ffd7 8b4dfc 33c0 5f }
		$sequence_18 = { 8d8424dc0b0000 50 ffd6 85c0 751a 68???????? 8d8424dc0b0000 }

	condition:
		7 of them and filesize <796672
}