rule MALPEDIA_Win_Smanager_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "7788af6d-844d-509b-90a8-b8ca5df742b1"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.smanager"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.smanager_auto.yar#L1-L224"
		license_url = "N/A"
		logic_hash = "7070ed4ef9fc0031fffb8ae0d3a2a122913a3a51a0e1a419190de42eef9b5039"
		score = 75
		quality = 73
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
		$sequence_0 = { 6a0d e8???????? 83c404 8bf0 }
		$sequence_1 = { 51 ffd0 83c40c c7460800000000 }
		$sequence_2 = { 7410 6a00 6a00 6830001100 }
		$sequence_3 = { 8b7604 6a00 6a00 56 68???????? 6a00 6a00 }
		$sequence_4 = { 8b4608 85c0 7420 a801 7515 }
		$sequence_5 = { 8b4510 85c0 7407 50 ff15???????? }
		$sequence_6 = { 68???????? 6a00 6a00 ff15???????? 8bf8 897e28 }
		$sequence_7 = { 83c602 6a22 56 e8???????? 83c408 }
		$sequence_8 = { ff15???????? 32c0 e9???????? 0f1005???????? }
		$sequence_9 = { 0007 b15a 0007 b15a }
		$sequence_10 = { 0000 80ed4a 0044feff ff900100008c }
		$sequence_11 = { 4c8d9c24d0010000 498b5b28 498b7330 498b7b38 498be3 415f }
		$sequence_12 = { 41c7430800000000 488d59b0 488d0532730100 498943e0 488d0537730100 }
		$sequence_13 = { 0008 53 4f 00ef }
		$sequence_14 = { 4885c0 7463 41b80f000000 488d159ab90100 488bc8 e8???????? }
		$sequence_15 = { 44894de9 66448955f1 418bc8 8bc2 4c8d0de10b0100 c1e918 }
		$sequence_16 = { 488bf8 448b842480000000 33d2 488bc8 e8???????? 4533f6 }
		$sequence_17 = { 0007 b15a 00c4 b15a }
		$sequence_18 = { 41b803000000 488d0d908e0000 4533c9 ba00000040 4489442420 ff15???????? }
		$sequence_19 = { 0003 b157 0000 0c0c }
		$sequence_20 = { 0007 b15a 0089b05a0089 b05a }
		$sequence_21 = { 7404 b301 eb03 448937 }
		$sequence_22 = { 0001 ce 50 0008 }
		$sequence_23 = { 0000 0c0c 0c0c 0c0c 0c0c 0c0c 0102 }

	condition:
		7 of them and filesize <10013696
}