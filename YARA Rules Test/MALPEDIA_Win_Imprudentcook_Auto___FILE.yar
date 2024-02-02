rule MALPEDIA_Win_Imprudentcook_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "da16e08a-4583-5528-aff9-b355b3ccc1ad"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.imprudentcook"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.imprudentcook_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "dc1ba99de715ff44414f303429509d324c0251135a2ef150545d89588c26b553"
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
		$sequence_0 = { 488d3c0b 483bf9 4983d200 4883ee18 4d03da 4d03d9 48ffcd }
		$sequence_1 = { 4983c708 4983c508 48ffc9 75ec 49894500 488b5520 488d4fff }
		$sequence_2 = { 4d8bc4 498bd2 eb08 4c89642420 4c8bc7 }
		$sequence_3 = { 488d04ed00000000 4c03f5 4803f5 48ffc3 4c03f8 4c3bf7 7ec8 }
		$sequence_4 = { 4c8bcf 4d8bc5 498bd4 e8???????? 488b9580000000 41b901000000 4d8bc6 }
		$sequence_5 = { 4d3bfe 0f8c45ffffff 4c8bac2488000000 4f8d7c2d00 498bde 4d3bf7 }
		$sequence_6 = { 8807 e9???????? 81fb0b000100 0f8dfb030000 81fb0000007e 0f87f7030000 85db }
		$sequence_7 = { 4803c2 48c1f806 488bf8 488bd8 488b8424c0000000 4c8d1cf8 48c1e306 }
		$sequence_8 = { 4833c2 482bc2 488bd3 493bc2 7d1a 4c895c2428 4c89442420 }
		$sequence_9 = { e9???????? 48ffcd b938000000 90 488bc3 48d3e8 84c0 }

	condition:
		7 of them and filesize <864256
}