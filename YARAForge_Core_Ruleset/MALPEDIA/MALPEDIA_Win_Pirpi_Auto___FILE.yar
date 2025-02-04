rule MALPEDIA_Win_Pirpi_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "98537945-bca9-5f78-aa80-688498d88ff3"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pirpi"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.pirpi_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "b10391fa85a6d93cb62abde2610054ffc017de9bf6b1bef0a98b13168e41c382"
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
		$sequence_0 = { e8???????? 33ff 8945f4 85c0 897dfc }
		$sequence_1 = { 46 3bf7 72eb c6043b00 5d 8bc7 }
		$sequence_2 = { 50 ff15???????? 83c414 8d8c2434010000 }
		$sequence_3 = { 8bd8 83c408 85db 7515 68???????? 50 }
		$sequence_4 = { 83c404 85ed 7513 53 ff15???????? 5f 5e }
		$sequence_5 = { 56 ff15???????? 56 8be8 ff15???????? 33d2 3bea }
		$sequence_6 = { 33c0 f2ae f7d1 49 83f920 7350 }
		$sequence_7 = { 03d8 f3a4 c6042b00 eb6e }
		$sequence_8 = { 55 c744242018000000 e8???????? 83f87a 753b 55 8b2d???????? }
		$sequence_9 = { 89442414 7516 ff15???????? 894504 c744241000000000 e9???????? }

	condition:
		7 of them and filesize <327680
}