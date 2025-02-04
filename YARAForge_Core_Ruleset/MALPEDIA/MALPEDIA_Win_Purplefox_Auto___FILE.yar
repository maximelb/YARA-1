rule MALPEDIA_Win_Purplefox_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "864146ba-a135-5d92-a900-c7434a0b6e81"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.purplefox"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.purplefox_auto.yar#L1-L376"
		license_url = "N/A"
		logic_hash = "2241b5e41c5930d16a914d761ccbb07709436fc80bf5297a0da02f1f8d89a59e"
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
		$sequence_0 = { 8945ec 8d45f0 50 8d4dd8 8d55f8 51 }
		$sequence_1 = { d2de feca 28c3 80d262 9c }
		$sequence_2 = { 66f7d9 c1e810 52 66c1d908 0f9fc5 }
		$sequence_3 = { 8918 e8???????? 4c8d15a7c70000 4885c0 7404 4c8d5010 8bcb }
		$sequence_4 = { 8d45f8 50 6a00 6a00 c745f800000000 }
		$sequence_5 = { 488b8d08040000 488d442470 4d8b00 4533c9 ba00000100 4889742428 48899c24f0040000 }
		$sequence_6 = { ff15???????? 488bc8 ff15???????? 488d1528460000 488bce }
		$sequence_7 = { 8b04c52cbb4000 5d c3 8bff 55 8bec }
		$sequence_8 = { ffd6 83c410 8d542424 52 8d442410 e8???????? }
		$sequence_9 = { 0f1005???????? f20f100d???????? 4889bc24c8000000 33ff }
		$sequence_10 = { 51 0f9dc3 8b742404 685af85bca 8b7c240c }
		$sequence_11 = { 56 57 68???????? e8???????? 83c404 6a00 6a00 }
		$sequence_12 = { cf b94523340a e8???????? 06 }
		$sequence_13 = { b614 dc1a 7038 1f a5 }
		$sequence_14 = { 415d 415c 5f c3 4889742478 488bb42490000000 }
		$sequence_15 = { 8d4df4 51 52 56 6a00 50 }
		$sequence_16 = { 488b4238 48894108 488b4a50 4885c9 }
		$sequence_17 = { e8???????? 8dbddcfdffff e8???????? 8dbddcfdffff c745fcffffffff }
		$sequence_18 = { 6685c9 75f1 8d85f8fdffff 56 33f6 8d5002 }
		$sequence_19 = { 8944241c 52 8d44241c 50 }
		$sequence_20 = { 4803d8 41b800040000 48899d00040000 e8???????? e9???????? 488b4c2470 ff15???????? }
		$sequence_21 = { 448bcf 4889442420 e8???????? 8bc7 488d4dd0 33d2 }
		$sequence_22 = { 8b703c 66f7da 0fbae603 0fca 20c6 01c6 42 }
		$sequence_23 = { 4883c308 483bdf 72ed 48833d????????00 741f 488d0d36c60000 e8???????? }
		$sequence_24 = { 57 68???????? 68???????? bf00500000 ff15???????? 50 ff15???????? }
		$sequence_25 = { ff15???????? 488d542450 488d0d96b10000 e8???????? }
		$sequence_26 = { 3bf3 7d1e 8b4de8 ff15???????? 8b4df8 51 }
		$sequence_27 = { 52 ffd3 85c0 7507 b802000000 eb1a }
		$sequence_28 = { 9c 368810 c6042413 60 }
		$sequence_29 = { 668b460c 8b5508 6a01 668945e4 }
		$sequence_30 = { 4533c0 33d2 4489b424a0000000 4889442420 }
		$sequence_31 = { a1???????? a3???????? a1???????? c705????????bb454000 8935???????? }
		$sequence_32 = { e8???????? 83c408 33ff eb23 68???????? }
		$sequence_33 = { 4885c0 743f 488b0d???????? 488d1551970000 }
		$sequence_34 = { 8b1d???????? 68???????? 50 ffd3 85c0 750c 8b4f08 }
		$sequence_35 = { c744246800010000 488bf9 4889742460 89742458 89742450 4889742448 }
		$sequence_36 = { 488d0de4d20000 483bd9 723e 488d0568d60000 483bd8 7732 488bd3 }
		$sequence_37 = { 48ffce 75a3 8b4504 03c5 8be8 833800 }
		$sequence_38 = { 897c2404 e8???????? e8???????? 8d64242c 0f850a000000 660fb6d8 }
		$sequence_39 = { 56 57 4883ec50 8bc9 488d942480000000 ff15???????? }

	condition:
		7 of them and filesize <1983488
}