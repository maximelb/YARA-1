rule MALPEDIA_Win_Pss_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "c85e1f97-adb5-5a29-88aa-4e9dab9b1814"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pss"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.pss_auto.yar#L1-L136"
		license_url = "N/A"
		logic_hash = "3fa2b0cf1b29b7abf02331e25c131d124a839f7a317f2ebb6c59c1c9547e53c0"
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
		$sequence_0 = { 8d48fe e8???????? e9???????? 83f811 }
		$sequence_1 = { 7437 ff15???????? 3de5030000 752a }
		$sequence_2 = { ff15???????? 83ceff 3bc6 7504 }
		$sequence_3 = { 5e 5b 0f42ca 85c0 0f45c8 }
		$sequence_4 = { 0fb619 0fb6c0 eb17 81fb00010000 7313 8a87a4f10110 }
		$sequence_5 = { 8d542418 8bce e8???????? 59 59 }
		$sequence_6 = { 8bf9 46 85ff 744f 833fff 7410 ff37 }
		$sequence_7 = { 0fb6c0 5f 5e 5b c9 }
		$sequence_8 = { 488d4c2428 e8???????? 90 4c8d05b3b70000 488bd0 488d0db1610100 }
		$sequence_9 = { ff15???????? b001 eb25 e8???????? }
		$sequence_10 = { e8???????? 90 4c8d05d3b50000 488bd0 }
		$sequence_11 = { 488bcb e8???????? e9???????? ba80000000 488bcb }
		$sequence_12 = { 488b4de7 e8???????? 48c745ff07000000 48897df7 }

	condition:
		7 of them and filesize <421888
}