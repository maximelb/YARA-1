rule MALPEDIA_Win_Avast_Disabler_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6a09cca4-7cb6-5c97-b15b-4f7311a6621b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.avast_disabler"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.avast_disabler_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "19754a7bc503b1b28bdfc059b6eb230f6f3e29b2e990d8ace51bd954a83ec439"
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
		$sequence_0 = { 85c0 7404 3bc1 7515 0f31 35???????? }
		$sequence_1 = { 7534 837c371400 752d 89443714 6a08 8d45f4 50 }
		$sequence_2 = { b94ee640bb 85c0 7404 3bc1 7515 }
		$sequence_3 = { 2b4c3718 51 53 53 50 e8???????? 8b4dfc }
		$sequence_4 = { 50 ff15???????? 6a01 8d45f8 50 ff750c ff15???????? }
		$sequence_5 = { 33c0 40 394510 7534 837c371400 752d }
		$sequence_6 = { 8b5c3718 83c112 03d9 837d1000 }
		$sequence_7 = { 75a9 5f 5e 5b 5d c21000 55 }
		$sequence_8 = { 51 803d????????00 7520 c605????????01 }
		$sequence_9 = { 5f 5e 5b 8be5 5d c20c00 3b0d???????? }

	condition:
		7 of them and filesize <41984
}