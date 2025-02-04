rule MALPEDIA_Win_Jessiecontea_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "526b090a-a995-58b5-b843-1e70dd71cefc"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jessiecontea"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.jessiecontea_auto.yar#L1-L165"
		license_url = "N/A"
		logic_hash = "c68c31b644ea8b3e7ca9f4e4366853343f61b6640765616026487f548092899b"
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
		$sequence_0 = { c78590f4ffff00000000 c7858cf4ffff00000000 c78588f4ffff00000000 c78594f4ffff01000000 c78598f4ffff01000000 e8???????? }
		$sequence_1 = { 3d00010000 0f8f03010000 6a00 6a00 50 }
		$sequence_2 = { 8d85e8fdffff 50 8d85a2f6ffff 50 }
		$sequence_3 = { 57 8b7d18 8945c0 8b4510 }
		$sequence_4 = { eb02 2bf7 6a00 8d85e8b7ffff 50 }
		$sequence_5 = { 5d c3 c705????????31090000 5f 5e 5b 8be5 }
		$sequence_6 = { 56 57 680a020000 8d85d8fbffff 8bf2 6a00 }
		$sequence_7 = { 6880000000 6a01 6a00 6a01 6800000040 8d85f8fbffff 50 }
		$sequence_8 = { 41b800080000 be20000008 e8???????? 33d2 448975c0 }
		$sequence_9 = { 4d8bc8 4d2bcd 6690 488d82fafeff7f }
		$sequence_10 = { 83e03f 2bc8 33c0 48d3c8 488d0d39d20100 4833c2 }
		$sequence_11 = { 7305 44887c3710 488bcb e8???????? 397d50 7230 }
		$sequence_12 = { ff15???????? 85c0 0f8580fcffff 488b4c2460 }
		$sequence_13 = { 892d???????? 8b1d???????? 488d4c2430 8bfd 48896c2430 }
		$sequence_14 = { 4889442440 33d2 4489742448 41b8ff3f0000 488d8d51070000 }
		$sequence_15 = { 488b4d98 488d4588 4889442428 41b902000000 }

	condition:
		7 of them and filesize <413696
}