rule MALPEDIA_Win_Dnschanger_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ae807a62-5d4f-55b1-a240-1c49a1caed44"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dnschanger"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dnschanger_auto.yar#L1-L116"
		license_url = "N/A"
		logic_hash = "6d81d999d3cf2fb8d24f1a3cbe10fc2c3244404cd2fbc45cfa8a36930b442d5e"
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
		$sequence_0 = { ff15???????? 8bf0 8b442414 6800010000 }
		$sequence_1 = { b301 57 ff15???????? 85f6 740c 56 6a00 }
		$sequence_2 = { 8bc2 03c7 eb02 8bc7 5f }
		$sequence_3 = { be04000000 5f 8bc6 5e 81c494000000 }
		$sequence_4 = { ff7508 66ab aa ff15???????? }
		$sequence_5 = { 8b542408 53 8a1a 8819 41 42 84db }
		$sequence_6 = { 3b0e 72f2 57 57 57 }
		$sequence_7 = { 57 57 56 57 ff75fc ff15???????? }
		$sequence_8 = { 5e 81c494000000 c3 83f806 }
		$sequence_9 = { f3aa 8bc6 5f 5e c3 }

	condition:
		7 of them and filesize <49152
}