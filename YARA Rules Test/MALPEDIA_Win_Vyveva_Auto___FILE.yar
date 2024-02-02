rule MALPEDIA_Win_Vyveva_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5f920383-d05c-5c69-8d2c-6a773f2538b6"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vyveva"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.vyveva_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "9d5c74e05efbe3ba7525bfb04e432ddba69e01227882b7ebe7ef3564991f92e2"
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
		$sequence_0 = { 58 ff7008 5a 8916 3b4808 7405 }
		$sequence_1 = { 51 8f00 8b4c2408 85c9 7407 51 8f4004 }
		$sequence_2 = { 57 56 51 55 59 e8???????? ff30 }
		$sequence_3 = { 56 59 50 e8???????? 8d8c2494010000 6a04 }
		$sequence_4 = { 740a 394424fc 7404 894424fc 83ec04 5d 83fdff }
		$sequence_5 = { 83ec38 8b15???????? 8d442404 55 56 }
		$sequence_6 = { 2bce 59 7409 33c9 8d4c0e04 83e904 ff5004 }
		$sequence_7 = { 6a00 52 50 6a06 e8???????? 83c404 ffd0 }
		$sequence_8 = { 59 c644247801 e8???????? 8b4c2434 8b442430 8d542428 894c242c }
		$sequence_9 = { 7408 c70100000000 0101 83c008 85c0 7403 55 }

	condition:
		7 of them and filesize <360448
}