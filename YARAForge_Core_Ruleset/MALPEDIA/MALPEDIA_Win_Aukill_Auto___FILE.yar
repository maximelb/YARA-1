rule MALPEDIA_Win_Aukill_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "a6d13b29-a1c3-5db7-ac5c-09009229e7b9"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.aukill"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.aukill_auto.yar#L1-L117"
		license_url = "N/A"
		logic_hash = "ebc3504ab44ddd68fe35d4be4361ca674b2d7f3006cec23148755c773291be1b"
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
		$sequence_0 = { 85c0 751f 488b4c2458 ff15???????? }
		$sequence_1 = { 0fb7da 8bf9 e8???????? 4c8bc8 4533c0 }
		$sequence_2 = { 4533c0 33d2 488bcb ff15???????? 85c0 7526 488bcb }
		$sequence_3 = { 4889442420 ff15???????? 85c0 751f 488b4c2458 ff15???????? }
		$sequence_4 = { 751d 488bcb ff15???????? ff15???????? }
		$sequence_5 = { 4489442420 453b01 7346 4b8d1440 410f104cd108 0f114c2428 f2410f1044d118 }
		$sequence_6 = { 448d4920 48894c2450 488b0d???????? 48897c2458 }
		$sequence_7 = { 488bd3 33c9 ff15???????? 85c0 751f }
		$sequence_8 = { 48895c2408 57 4883ec60 488bfa 8bd9 e8???????? 33c9 }
		$sequence_9 = { ffc2 80f920 75ee 4c63c2 }

	condition:
		7 of them and filesize <446464
}