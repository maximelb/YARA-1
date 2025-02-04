rule MALPEDIA_Win_Dubrute_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "91c95b88-1aba-547d-a2e7-1c5fddf4a9b5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dubrute"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dubrute_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "96123f7850603b9e3ec4473b7e8755ea7a00903c8750eba6148228fb5b3de4ca"
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
		$sequence_0 = { 8d45dc dd5de4 50 c645fc0d ff15???????? 8d4df0 c645fc08 }
		$sequence_1 = { 83c410 83f8ff 743b 85c0 741c 03f0 56 }
		$sequence_2 = { 83e906 7426 49 741a 49 740e 49 }
		$sequence_3 = { 7427 48 7413 48 48 7551 57 }
		$sequence_4 = { 5e 5d c3 8b4c2408 81f9ff000000 7e1b 8b442404 }
		$sequence_5 = { e8???????? 83c410 ff866c090000 5e c3 55 8bec }
		$sequence_6 = { 7520 8b06 8b4018 8b00 ff30 e8???????? 6a06 }
		$sequence_7 = { 57 53 ff15???????? 8b3d???????? 8325????????00 8b37 3bf7 }
		$sequence_8 = { 56 53 68???????? e8???????? 83c40c 837d1400 }
		$sequence_9 = { 8a48ff 884e01 83c603 837df000 7fd4 e9???????? f745f0f8ffffff }

	condition:
		7 of them and filesize <598016
}