rule MALPEDIA_Win_Quantloader_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4febf63d-0f98-5ee5-9cc6-9fa1c2da1c7c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.quantloader"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.quantloader_auto.yar#L1-L175"
		license_url = "N/A"
		logic_hash = "02e93017f3318c384f200ca1e9ba6b581c4815c155dd61d906306a2c75ce48f2"
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
		$sequence_0 = { 8d85f8fdffff 890424 e8???????? 8d85f8fdffff 890424 e8???????? }
		$sequence_1 = { e8???????? c7442404???????? c70424???????? e8???????? 8b450c }
		$sequence_2 = { e8???????? 85c0 750c c70424???????? e8???????? c70424???????? }
		$sequence_3 = { e8???????? 85c0 0f94c0 0fb6d8 c744240801000000 8b45f8 }
		$sequence_4 = { 89442404 c7042400000000 e8???????? 83ec0c 8d85f8f7ffff 89442404 }
		$sequence_5 = { c744240400000000 c70424???????? e8???????? 83ec14 8945f4 }
		$sequence_6 = { c70424???????? e8???????? c744240800000000 c7442404???????? c70424???????? }
		$sequence_7 = { 817d08???????? 7470 817d0c00704000 7467 8b4508 803800 }
		$sequence_8 = { 8d341e 66ad 6633d0 75df }
		$sequence_9 = { 75f1 5e 8bc6 8bf7 3bc5 7403 }
		$sequence_10 = { 61 c3 60 8bd3 8bf2 03763c 2b5634 }
		$sequence_11 = { 837d5400 7425 64ff3530000000 59 8b490c 8b490c }
		$sequence_12 = { ff30 6800100000 57 81042400100000 ff550c }
		$sequence_13 = { 61 c3 58 ffd0 837c240802 7414 64a118000000 }
		$sequence_14 = { 5d 8bc4 ff7010 ff700c ff7008 ff5550 e8???????? }
		$sequence_15 = { 85c0 741b a900000080 7504 8d440302 25ffffff7f }

	condition:
		7 of them and filesize <155648
}