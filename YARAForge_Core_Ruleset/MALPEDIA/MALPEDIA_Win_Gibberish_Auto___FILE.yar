rule MALPEDIA_Win_Gibberish_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "409a50f2-d1ad-54e1-a200-e21294aa9e4e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.gibberish"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.gibberish_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "57f29d590beea21c748ae9324417e51d5ad871133bb0f66df9972b1b6e5d5d7b"
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
		$sequence_0 = { ff15???????? 8945a4 e8???????? 8b4dac 8b45a4 6a41 }
		$sequence_1 = { 8b75e8 8b7dec e9???????? f30f7e4de8 0f1045d8 eb03 }
		$sequence_2 = { c1e908 894c2410 8b4c2418 3314c5e1a14700 0fb6c1 c1e908 }
		$sequence_3 = { e8???????? 84c0 0f849a000000 33c0 668985dcf9ffff 8d85e8fbffff 68???????? }
		$sequence_4 = { 8944243c 8b4124 89442440 8b4128 8d4c241c c744241c209d4500 c7442420d49d4500 }
		$sequence_5 = { 894db0 8d4dc0 50 c745d000000000 c745d40f000000 c645c000 e8???????? }
		$sequence_6 = { 81fae3000000 7cc4 81fa6f020000 7d3a 57 8d3c9518bd4700 }
		$sequence_7 = { 68???????? 53 53 ff15???????? 8b55ac 8b4da8 890491 }
		$sequence_8 = { ff15???????? 66898435fdfbffff 83c607 53 56 8d85f8fbffff 50 }
		$sequence_9 = { 8b45d4 8d4dd8 8b55d0 83ff10 8b7dd8 0f43cf 2bc2 }

	condition:
		7 of them and filesize <1068032
}