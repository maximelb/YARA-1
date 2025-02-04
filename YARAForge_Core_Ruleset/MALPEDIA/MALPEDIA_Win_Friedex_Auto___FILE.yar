rule MALPEDIA_Win_Friedex_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "97d1751f-5738-5834-8f82-479344539d3a"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.friedex"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.friedex_auto.yar#L1-L172"
		license_url = "N/A"
		logic_hash = "8dffa1fb6804412157c235a0ef3196dc0c5961e846d30c21c59180ff32555e60"
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
		$sequence_0 = { e8???????? 57 8bc8 e8???????? 6a26 }
		$sequence_1 = { c20c00 51 51 53 55 8be9 c744240820090d0a }
		$sequence_2 = { 1adb e8???????? 6a20 5f }
		$sequence_3 = { 74f9 33c9 663908 0f94c0 5f 5e 5d }
		$sequence_4 = { 663910 7431 8bd8 8d7102 eb1d }
		$sequence_5 = { 5f 5b 5e 5d c20c00 51 }
		$sequence_6 = { 75c1 6a2a 5f eb06 b001 eb0f 03c5 }
		$sequence_7 = { 6a00 ff760c ffd0 8b442408 5e }
		$sequence_8 = { 8955e0 e8???????? 8d0dd830a500 890424 894c2404 e8???????? }
		$sequence_9 = { 8d055a23a500 31c9 8d55d8 803d????????e9 8955d4 8945d0 }
		$sequence_10 = { 8a2c057530a500 83c001 38e9 8945a0 8955cc 74bc }
		$sequence_11 = { 8d055a23a500 5d c3 55 }
		$sequence_12 = { c7424458270000 c7424800100100 8b7de4 c787cc00000000000000 c787c800000000000000 }
		$sequence_13 = { 8b45a4 8a4daf 31d2 8a2c057530a500 83c001 38e9 }
		$sequence_14 = { 8d0dc930a500 890424 894c2404 e8???????? 8d0d4430a500 31d2 8b75f8 }
		$sequence_15 = { 8d0d4430a500 31d2 890c24 c744240400000000 }

	condition:
		7 of them and filesize <204800
}