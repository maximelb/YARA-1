rule MALPEDIA_Win_Gandcrab_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8fb97f0d-f07e-528f-846a-617ae03e5a0b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.gandcrab"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.gandcrab_auto.yar#L1-L119"
		license_url = "N/A"
		logic_hash = "51f7c1543a06dc758514ed4496666d6ea311b3c69b16117153a658edbbb8509b"
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
		$sequence_0 = { ff15???????? ff7728 8bf0 ff15???????? 03c3 8d5e04 }
		$sequence_1 = { 7403 83c314 837f7400 741b ff777c ff15???????? ff7778 }
		$sequence_2 = { 8d5e04 03d8 837f2400 741b ff772c }
		$sequence_3 = { ff774c 8bf0 ff15???????? 03c3 8d5e04 03d8 }
		$sequence_4 = { 03c3 8d5e04 03d8 837f5400 741b }
		$sequence_5 = { 03c3 8d5e04 03d8 837f3000 741b }
		$sequence_6 = { ff774c 8bf0 ff15???????? 03c3 8d5e04 }
		$sequence_7 = { 837f1800 741b ff7720 ff15???????? }
		$sequence_8 = { 03d8 837f6000 7403 83c314 837f7400 741b ff777c }
		$sequence_9 = { ff15???????? 03c3 8d5e04 03d8 837f3000 }

	condition:
		7 of them and filesize <1024000
}