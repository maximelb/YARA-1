rule MALPEDIA_Win_Remcos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "0b71eaff-61b4-55ab-a8af-3cf13e03dd61"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.remcos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.remcos_auto.yar#L1-L113"
		license_url = "N/A"
		logic_hash = "d80be2f75bdd44294476100f6767031142d9f2872cceaebec5f1ed9745e8779f"
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
		$sequence_0 = { 7410 6a00 ff35???????? ff15???????? }
		$sequence_1 = { 50 ff15???????? 8d45f0 33f6 }
		$sequence_2 = { 6a09 ff35???????? ff15???????? ff35???????? ff15???????? }
		$sequence_3 = { 8d45f8 50 ff15???????? ff7508 }
		$sequence_4 = { 7508 ff15???????? 33c0 5f }
		$sequence_5 = { 6a09 ff35???????? ff15???????? ff35???????? }
		$sequence_6 = { ff15???????? 50 ff15???????? 8d45f0 33f6 }
		$sequence_7 = { 50 6a28 ff15???????? 50 ff15???????? 8d45f0 33f6 }
		$sequence_8 = { 51 51 8d45f8 c745f808000000 50 ff15???????? ff15???????? }
		$sequence_9 = { 85c0 7410 6a00 ff35???????? ff15???????? }

	condition:
		7 of them and filesize <1054720
}