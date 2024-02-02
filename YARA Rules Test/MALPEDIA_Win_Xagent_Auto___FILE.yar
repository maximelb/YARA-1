rule MALPEDIA_Win_Xagent_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "bde2508f-cfa2-522c-bf18-0bedb23d3501"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.xagent"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.xagent_auto.yar#L1-L231"
		license_url = "N/A"
		logic_hash = "1ef231aa11dc012f9839829c886b5e479b3c99a501478ca77ee155ba663fd5ac"
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
		$sequence_0 = { c1ea02 6bd20d b801000000 2bc2 }
		$sequence_1 = { ff15???????? 8bd8 e8???????? 03d8 }
		$sequence_2 = { 5b 8be5 5d c20400 8d4de4 e8???????? b8???????? }
		$sequence_3 = { 8b4604 85c0 7407 8b4d08 8b11 }
		$sequence_4 = { 2bc7 8b5204 8b0482 8b0488 8b4e10 }
		$sequence_5 = { 85c9 7423 8b7e08 ff460c 03ff }
		$sequence_6 = { 33d2 eb02 8b11 8b4808 8bc1 57 }
		$sequence_7 = { 3b7e0c 7707 c7460c00000000 49 }
		$sequence_8 = { 894e10 7507 c7460c00000000 5f }
		$sequence_9 = { 55 8bec 33c0 83ec0c 39412c }
		$sequence_10 = { 384b02 0f92c3 488d4c2430 e8???????? 90 }
		$sequence_11 = { e8???????? 90 0fb705???????? 6689442420 }
		$sequence_12 = { e8???????? 488b4328 4c8bcf 4c8bc6 }
		$sequence_13 = { 84c0 740c 488b07 488b0b }
		$sequence_14 = { 8bd8 e8???????? 8d0c18 e8???????? }
		$sequence_15 = { 48896c2410 4889742418 57 4883ec30 4883792800 }
		$sequence_16 = { e8???????? 498bce 4e8d0437 482bcf }
		$sequence_17 = { 740c 488b07 4c8b13 488903 }
		$sequence_18 = { b803b57ea5 f7e6 c1ea06 6bd263 }
		$sequence_19 = { ff15???????? baf4010000 488bcb ff15???????? 85c0 }
		$sequence_20 = { c1ea07 69d295000000 2bca 8bd1 }
		$sequence_21 = { 75f8 482bc3 4d8bc6 498bd7 }
		$sequence_22 = { 75f8 482bc3 4c8bc6 488bd7 }
		$sequence_23 = { 75f8 482bc3 498bd7 488d0c18 }
		$sequence_24 = { 75f8 482bc5 4533e4 488bbc2480000000 }
		$sequence_25 = { 75f8 482bc3 498bd6 488d0c18 e8???????? 488bd7 4885ff }

	condition:
		7 of them and filesize <729088
}