rule MALPEDIA_Win_Catb_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "515d6ff4-29b8-5f9d-8e4d-ae72db2e24b8"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.catb"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.catb_auto.yar#L1-L118"
		license_url = "N/A"
		logic_hash = "9a8c29b856252443b361ebb50acc406bc1908e5c4eee2fd3c5627837db3c96fd"
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
		$sequence_0 = { 418bcc e8???????? 85c0 0f8484000000 488b442440 488d0d22920300 }
		$sequence_1 = { 4c8d050e9c0300 83e23f 488bcb 48c1f906 488d14d2 498b0cc8 8064d138fd }
		$sequence_2 = { 488d159bdc0000 483950f0 740b 488b10 }
		$sequence_3 = { 4c8d0da47f0000 b903000000 4c8d05907f0000 488d15f9750000 e8???????? 4885c0 740f }
		$sequence_4 = { 4533c0 488d0d8e0e0400 baa00f0000 e8???????? 85c0 740a ff05???????? }
		$sequence_5 = { 4c8d0d6bab0300 4c8bc6 488bd7 488bcb e8???????? }
		$sequence_6 = { 4c8d0d922affff 4c8b4570 8b5568 488b4d60 }
		$sequence_7 = { 4053 4883ec20 8bd9 4c8d0d05d00000 }
		$sequence_8 = { 488d0d72190400 e8???????? 488b442438 488905???????? 488d442438 4883c008 }
		$sequence_9 = { 488bc3 498784f6803c0400 4885c0 7409 }

	condition:
		7 of them and filesize <593920
}