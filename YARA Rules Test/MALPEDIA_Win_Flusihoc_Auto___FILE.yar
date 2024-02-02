rule MALPEDIA_Win_Flusihoc_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "78da62a5-c798-5ed3-b0d2-4c7f68889a1b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.flusihoc"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.flusihoc_auto.yar#L1-L168"
		license_url = "N/A"
		logic_hash = "9c728cded699d733d4c529cd8d0e45713d382315b1100a325978e10da75fc22d"
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
		$sequence_0 = { 8bec 83e4f8 81ece40b0000 a1???????? }
		$sequence_1 = { 53 56 57 6a40 8d442428 6a00 50 }
		$sequence_2 = { 50 f3a5 c684246402000000 e8???????? }
		$sequence_3 = { a1???????? 33c4 89842450160000 53 56 8b7508 57 }
		$sequence_4 = { 52 ffd6 6a0a ff15???????? }
		$sequence_5 = { 7507 80864d01000004 83f822 7506 }
		$sequence_6 = { ffd3 8b442410 6aff 50 ff15???????? }
		$sequence_7 = { 50 f3a5 c684246401000000 e8???????? 83c40c }
		$sequence_8 = { 6a00 50 c744242c44000000 e8???????? }
		$sequence_9 = { 83f822 7506 fe8e42010000 3d14010000 7506 }
		$sequence_10 = { 8b8c245c160000 5f 5e 5b 33cc 33c0 e8???????? }
		$sequence_11 = { ff15???????? 8b4c2410 51 ffd6 8b542414 52 ffd6 }
		$sequence_12 = { 3d68010000 7505 fe06 fe4e17 83f834 7503 fe4e18 }
		$sequence_13 = { 51 6a00 ff15???????? 8d95f4feffff 52 6806000200 }
		$sequence_14 = { 6804010000 8d85f8feffff 50 6a01 }
		$sequence_15 = { 68???????? 6802000080 ff15???????? 85c0 752f 8b8df4feffff }

	condition:
		7 of them and filesize <319488
}