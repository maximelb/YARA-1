rule MALPEDIA_Win_Metastealer_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "cdc28210-4a73-5ebc-92c2-e9cca60e6ba0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.metastealer"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.metastealer_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "6d21821c6e275cca2327e10c362ceb42915cf515b000f17d28567b39e609820e"
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
		$sequence_0 = { ff7710 50 e8???????? 8b4718 8d4b1c 894318 8d471c }
		$sequence_1 = { 8b4220 894620 8d4228 894224 897a20 c70700000000 8bc6 }
		$sequence_2 = { 8d4dd8 e8???????? c745fc00000000 8d45d8 68a3000000 68???????? 68???????? }
		$sequence_3 = { 8b4104 894610 8b4104 8b400c 85c0 740c 89460c }
		$sequence_4 = { eb0a c70600000000 c6460401 8a45ae 8b7d9c 8845af 660f1f440000 }
		$sequence_5 = { eb0e 0f57c0 660f1345d4 8b7dd8 8b75d4 51 8d4dd4 }
		$sequence_6 = { ff7314 68???????? 56 e8???????? 68???????? 56 e8???????? }
		$sequence_7 = { ffd0 83c40c 85c0 7407 be01000000 eb02 33f6 }
		$sequence_8 = { d945fc 5e 8be5 5d c3 8d8100000038 0bc6 }
		$sequence_9 = { c7411000000000 c7411400000000 837e1408 8975d0 7205 8b16 8955d0 }

	condition:
		7 of them and filesize <26230784
}