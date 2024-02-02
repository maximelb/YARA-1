rule MALPEDIA_Win_Chainshot_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "beaf03a9-9558-5280-a84b-64277bd4ffc2"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.chainshot"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.chainshot_auto.yar#L1-L111"
		license_url = "N/A"
		logic_hash = "ba9c33c28d22ea04923b796ce7a5cfd0e30c1f14b0a956e4cbe61344e61c7def"
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
		$sequence_0 = { 731b 85c9 7906 b840000000 }
		$sequence_1 = { 8d68fc c70726000000 e9???????? c70709000000 bd02000000 }
		$sequence_2 = { 7509 e8???????? 85c0 7808 }
		$sequence_3 = { 6683f819 7705 8d4220 eb03 0fb7c2 0fb7c0 }
		$sequence_4 = { b901070080 e8???????? eb89 8bd7 }
		$sequence_5 = { 7408 ffd0 8905???????? bfa3000080 e9???????? }
		$sequence_6 = { ffc8 0f843a110000 ffc8 7427 83e803 0f844a110000 }
		$sequence_7 = { 7408 ffd0 8905???????? bb82000080 }
		$sequence_8 = { 8d4a02 b8abaaaaaa f7e1 d1ea }
		$sequence_9 = { ffc8 747a ffc8 7461 83e802 }

	condition:
		7 of them and filesize <802816
}