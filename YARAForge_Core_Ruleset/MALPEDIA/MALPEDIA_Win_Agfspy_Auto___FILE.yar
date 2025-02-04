rule MALPEDIA_Win_Agfspy_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "aa314a06-4040-546e-b9cd-d5bfa676b734"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.agfspy"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.agfspy_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "e751bb17a85204a5afd3cbca773cdafd25186332344d59ffe01d62696a3fda9d"
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
		$sequence_0 = { 7527 83fefd 7431 8a4101 3a4201 751a 83fefe }
		$sequence_1 = { 85f6 7539 8d45c0 50 8d45d4 50 e8???????? }
		$sequence_2 = { 731d 8d4101 83fe10 8945d0 8d45c0 0f4345c0 881408 }
		$sequence_3 = { c645fc04 8d45b0 837dc408 51 0f4345b0 8d4d84 50 }
		$sequence_4 = { e8???????? eb46 8b4720 85c0 741f 837e1410 8bce }
		$sequence_5 = { 2bc1 83c0fc 83f81f 7724 e9???????? 32c0 8b4df4 }
		$sequence_6 = { 837de808 0f4375d4 3b55cc 752f 85d2 7413 2bf0 }
		$sequence_7 = { 50 e8???????? 8ac8 8b45b4 83f80c 74e7 }
		$sequence_8 = { 0fb602 eb05 8b01 ff501c 83f8ff 742f 8b0e }
		$sequence_9 = { d1f8 51 8bcb 8d0442 50 52 }

	condition:
		7 of them and filesize <1482752
}