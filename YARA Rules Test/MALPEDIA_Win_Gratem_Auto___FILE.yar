rule MALPEDIA_Win_Gratem_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "89f0dee2-28c6-5a10-a3ad-288a448f45ac"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.gratem"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.gratem_auto.yar#L1-L118"
		license_url = "N/A"
		logic_hash = "b58ab0ade84c3286830362f0f11bfb9519b8733c76dfe4e9cd7ba24746663e50"
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
		$sequence_0 = { c744242404000000 ffd5 85c0 0f84b2000000 }
		$sequence_1 = { 884e13 66a1???????? 33c9 6685c0 741f 0fb7c0 ba000c0000 }
		$sequence_2 = { ff15???????? 8b442414 50 ff15???????? 8b5c2410 56 }
		$sequence_3 = { 85c0 7405 e8???????? 8b8c24d4070000 5e 33cc }
		$sequence_4 = { 663bc2 0f84ac030000 0fb7048d64bc4000 41 }
		$sequence_5 = { 8b4c2440 8b542418 894114 895110 }
		$sequence_6 = { 6a00 50 e8???????? 83c40c 6805010000 8d4c2404 51 }
		$sequence_7 = { 53 ff54244c 85c0 8b442414 }
		$sequence_8 = { 0fb7c0 baa8540000 663bc2 0f8420050000 0fb7048d64bc4000 41 }
		$sequence_9 = { 56 8d34c5c0b84000 833e00 7513 50 e8???????? }

	condition:
		7 of them and filesize <155648
}