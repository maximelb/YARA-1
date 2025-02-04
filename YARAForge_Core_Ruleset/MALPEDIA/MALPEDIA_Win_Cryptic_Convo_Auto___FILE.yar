rule MALPEDIA_Win_Cryptic_Convo_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "c0d84b8c-dd86-5e0b-b294-081ee84952b7"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cryptic_convo"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.cryptic_convo_auto.yar#L1-L125"
		license_url = "N/A"
		logic_hash = "39890a4d7eaef0b28d86a0d6d65ec4ed011fdfc3e00013a201ada7ffacfd1cd9"
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
		$sequence_0 = { 8bf8 ffd6 85ff 7515 8d45e8 68???????? }
		$sequence_1 = { 75f9 8dbddcfaffff 2bc2 4f 8a4f01 }
		$sequence_2 = { 399e88000000 7445 399e8c000000 743d 6a40 6800300000 ff7510 }
		$sequence_3 = { c20400 0fb7442404 ff742408 50 e8???????? c20800 }
		$sequence_4 = { 50 6a01 6a00 68???????? 57 ffd3 85c0 }
		$sequence_5 = { a4 33c0 8a88d0474000 884c05e8 40 84c9 }
		$sequence_6 = { f3a4 8dbddcfaffff 4f 8a4701 47 84c0 75f8 }
		$sequence_7 = { 85c0 7407 c605????????01 be???????? 8d7d98 a5 66a5 }
		$sequence_8 = { 894584 ffd6 53 57 89458c ff15???????? }
		$sequence_9 = { 8d45c8 66a5 50 53 }

	condition:
		7 of them and filesize <97280
}