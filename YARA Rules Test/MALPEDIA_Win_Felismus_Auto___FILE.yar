rule MALPEDIA_Win_Felismus_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5818ed3f-2431-5f26-88a0-82a8f566adf3"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.felismus"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.felismus_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "dea5875d596c4ef87d002c63282ac83d0f7df95527f5e0d6e66faa21ccc2e20e"
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
		$sequence_0 = { ff15???????? 8b35???????? 83c404 53 ffd6 8b442410 }
		$sequence_1 = { 8b4e08 8b560c 89442418 8b4610 894c241c 89442424 }
		$sequence_2 = { 89542410 8b5110 56 2be8 57 89542420 bb01000000 }
		$sequence_3 = { 8d5640 8bfa f3ab 8b4618 33c9 85c0 7e24 }
		$sequence_4 = { 66ab aa b940000000 33c0 8dbc24b1050000 }
		$sequence_5 = { 85c0 740f 8d8c2414010000 68???????? 51 eb0d 8d942414010000 }
		$sequence_6 = { 8b442424 50 56 ff15???????? 56 ff15???????? 83f8ff }
		$sequence_7 = { 7cd0 8b461c 8bce 50 e8???????? 8b7e1c }
		$sequence_8 = { 51 8bfb 83c9ff 33c0 895514 f2ae f7d1 }
		$sequence_9 = { 83c408 85ff 742b 57 ff15???????? 83f816 7e1f }

	condition:
		7 of them and filesize <204800
}