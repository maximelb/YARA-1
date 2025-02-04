rule MALPEDIA_Win_Bit_Rat_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "49210a4b-5430-57e8-a054-5667e0ae3196"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bit_rat"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.bit_rat_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "eb9ba4fd39163b3bb9047c43b4366afc9171afe908b68fc3b3d7fbbef1990e08"
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
		$sequence_0 = { 85c9 753f 6a00 6a00 68c1000000 6809020000 6a28 }
		$sequence_1 = { ff7608 ff74241c e8???????? 8be8 83c408 85ed 7425 }
		$sequence_2 = { e8???????? 8be8 83c408 85ed 7930 6a00 6a00 }
		$sequence_3 = { 8be5 5d c3 8b4510 8320b7 c7400400000000 33c0 }
		$sequence_4 = { e8???????? 83c408 85c0 74cf 894704 8b450c 895f10 }
		$sequence_5 = { f20f114af8 f20f1142f0 0fbf06 660f6ec8 0fbf46fe 83c608 f30fe6c9 }
		$sequence_6 = { f644242401 895c2410 7413 83faff 0f84f5000000 42 89542414 }
		$sequence_7 = { eb12 6a00 6a00 6a06 6a79 6a2c e8???????? }
		$sequence_8 = { f00fc14108 48 7505 8b01 ff5004 8b4df4 64890d00000000 }
		$sequence_9 = { c70100000000 83c104 83c204 3bce 75e8 8bc2 5e }

	condition:
		7 of them and filesize <19405824
}