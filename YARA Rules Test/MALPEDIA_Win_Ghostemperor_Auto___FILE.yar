rule MALPEDIA_Win_Ghostemperor_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "22543585-64e5-59d9-a95f-0fb017ff004e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ghostemperor"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ghostemperor_auto.yar#L1-L228"
		license_url = "N/A"
		logic_hash = "91e3702f968d398f5f44f42cafec6cc32480eb0e4729b0b5f30643c45ff1a402"
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
		$sequence_0 = { b801000000 4883c428 5b 5d 5f 5e }
		$sequence_1 = { 31d2 41b801000000 4531c9 ff15???????? }
		$sequence_2 = { 41c1ea03 4183e007 4585d2 0f84b9000000 }
		$sequence_3 = { 8b5b10 4885db 7431 c7471800000000 89d9 }
		$sequence_4 = { e8???????? 48c7470800000000 c7471000000000 4c8d7e18 4c89f9 ff15???????? 448b4648 }
		$sequence_5 = { 4885c9 740d e8???????? 48c7460800000000 }
		$sequence_6 = { 4989c9 4889d0 458d5aff 41f6c203 7427 4489d1 83e103 }
		$sequence_7 = { 4883c410 c3 ff25???????? ff25???????? ff25???????? ff25???????? ff25???????? }
		$sequence_8 = { 4889c1 4863c6 488d0440 48c1e004 4801c8 eb02 31c0 }
		$sequence_9 = { 31f6 31d2 660f1f440000 488b3cf0 49313cf1 }
		$sequence_10 = { c74424504900df00 c744245436004d00 c74424586b007100 c744245cf5003400 }
		$sequence_11 = { 0f8883020000 33d2 c78594000000f1008500 c78598000000a8003f00 448d630e c7859c000000f7003100 }
		$sequence_12 = { 01c1 89ca c1ea1f c1f904 }
		$sequence_13 = { 488d4dd0 48895dd8 895de0 4c8bea e8???????? be08020000 8bce }
		$sequence_14 = { 00c2 488b8568020000 8854080c 488b85b0020000 }
		$sequence_15 = { 00c1 488b8568020000 488b95b0020000 884c100c 488b85b0020000 488b85b0020000 488b85b0020000 }
		$sequence_16 = { 85c0 7417 418bce 448bc7 48034e08 488bd5 e8???????? }
		$sequence_17 = { 7212 4d8b5a10 4d85db 7409 48895c2448 5b }
		$sequence_18 = { 01c3 69cbe8030000 81c130750000 4883ec20 }
		$sequence_19 = { 01d1 89ca c1e205 89cb }
		$sequence_20 = { 7449 8b5c2448 488bc7 d1eb ffcb }
		$sequence_21 = { 48895c2408 57 4883ec20 488d0557540000 488bd9 488901 }
		$sequence_22 = { c3 83c8ff ebf5 b801000000 ebee }

	condition:
		7 of them and filesize <1115136
}