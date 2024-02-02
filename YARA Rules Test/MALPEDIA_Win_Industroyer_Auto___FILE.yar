rule MALPEDIA_Win_Industroyer_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "9c6bfb9f-c466-5000-a18a-b1782556f295"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.industroyer"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.industroyer_auto.yar#L1-L379"
		license_url = "N/A"
		logic_hash = "10be42e3e137c59c80c36fac63f4d878185befa45cbf0b3714b0e9925e862e84"
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
		$sequence_0 = { 50 50 ff750c ff15???????? 8d45fc 50 8d45f8 }
		$sequence_1 = { 68f4010000 ff15???????? 33c0 50 }
		$sequence_2 = { 50 8945e0 e8???????? 8945f8 e8???????? 50 8945e4 }
		$sequence_3 = { 6808020000 50 ff7710 ff15???????? }
		$sequence_4 = { ff7710 6a03 56 e8???????? 83c424 894708 85c0 }
		$sequence_5 = { ff15???????? 8bd8 8d8598fdffff 6804010000 50 68???????? ff15???????? }
		$sequence_6 = { 6a02 50 53 68000000c0 56 c745f40c000000 895dfc }
		$sequence_7 = { 6a4c e8???????? 8bf0 8d8510ffffff 6a4c }
		$sequence_8 = { 8bf9 ff15???????? 3bf8 0f84bb000000 }
		$sequence_9 = { 8b7508 ff7604 8b06 ffd0 56 e8???????? }
		$sequence_10 = { ffd6 85c0 7431 ff35???????? }
		$sequence_11 = { 8bd8 85db 0f849d000000 8d85d0fdffff c785d0fdffff2c020000 50 53 }
		$sequence_12 = { 683f010f00 6a00 8d85a0f3ffff 50 6802000080 ff15???????? 85c0 }
		$sequence_13 = { 85c0 0f85bb000000 6800020000 8d85a0fbffff 50 }
		$sequence_14 = { bfffff0000 0f46f9 3d00005000 b900400000 }
		$sequence_15 = { 8d8c2468020000 e8???????? 8d442418 50 ff742414 ff15???????? }
		$sequence_16 = { eb07 8b0cc5dc084100 894de4 85c9 }
		$sequence_17 = { 0f8501010000 c745e0e4ff4000 8b4508 8bcf }
		$sequence_18 = { 6a0a 8854382a 8b048dd01f0210 8874382b 8b048dd01f0210 5a }
		$sequence_19 = { 0f8580000000 8b4508 dd00 ebc6 c745e0e8ff4000 }
		$sequence_20 = { 6689823e020000 0fb68340020000 888240020000 8d8344020000 50 e8???????? }
		$sequence_21 = { 50 ff15???????? 6a02 ff15???????? 50 ffd6 ff770c }
		$sequence_22 = { 0fb605???????? 88413e 0f1005???????? 0f118133010000 a1???????? 898143010000 }
		$sequence_23 = { 83e901 740d 83e902 7521 }
		$sequence_24 = { 660f28b820004100 660f54f0 660f5cc6 660f59f4 660f5cf2 f20f58fe }
		$sequence_25 = { 807b0100 0f85fc000000 a840 0f85d5000000 ff35???????? ff15???????? }
		$sequence_26 = { 89422c 0fb64330 884230 0fb64331 884231 0fb64332 }
		$sequence_27 = { 746a ff7508 8b15???????? 51 8bcb e8???????? }
		$sequence_28 = { 85c0 7450 6aff 56 ff15???????? }
		$sequence_29 = { ba???????? 0f94c1 884b32 84c9 a1???????? f30f7e05???????? }
		$sequence_30 = { 8b442418 89442440 8d44243c 50 ff15???????? 50 }
		$sequence_31 = { ff15???????? 68???????? ff15???????? 85c0 7417 68???????? }
		$sequence_32 = { 83c410 84c0 0f84b9010000 8b8520ffffff 8bbd1cffffff 2bc7 }
		$sequence_33 = { 8d4dc8 ff30 e8???????? 8d4d84 83ff02 0f86a4000000 }
		$sequence_34 = { e8???????? 6a00 56 8d8d08feffff e8???????? }
		$sequence_35 = { 8bce 8907 53 894704 e8???????? 8b4308 }
		$sequence_36 = { 53 8b1c85205e4400 56 6800080000 }
		$sequence_37 = { 8945e4 8d83bc000000 50 e8???????? 6a28 e8???????? }
		$sequence_38 = { 0fb7c1 8945f8 3905???????? 7f26 663b4df4 7320 }
		$sequence_39 = { 33c5 8945fc 8365e000 53 8b5d0c 56 }

	condition:
		7 of them and filesize <983040
}