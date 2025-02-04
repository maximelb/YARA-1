rule MALPEDIA_Win_Fonix_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "bd0f7338-d5ae-57b4-8254-a4a394cfa806"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fonix"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.fonix_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "a1de19ea9d27789030065bff520751643f536c0deae9fbccf8fe2c31cafb92ef"
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
		$sequence_0 = { 50 8d5508 c645fc0e 8d8df4fbffff e8???????? 51 51 }
		$sequence_1 = { 83c408 85ff 0f8533ffffff 0f1045a8 8bb56cffffff 0f114590 f30f7e45b8 }
		$sequence_2 = { c1c107 894c2434 8b4c2428 03ca 33f1 c1c610 03c6 }
		$sequence_3 = { 8b7d74 8d4500 57 50 ff7578 8d4530 c645fc0a }
		$sequence_4 = { c645fc1e e8???????? c645fc1f 68???????? 8d8d68fdffff e8???????? 68???????? }
		$sequence_5 = { e8???????? bf6e060000 c645fc0a 57 e8???????? 59 8bf0 }
		$sequence_6 = { 8bf0 ff5208 0faff0 8d4b0c 56 e8???????? }
		$sequence_7 = { 8d8d0cfcffff e8???????? 83ec18 8d4508 }
		$sequence_8 = { 8d4101 898d7cffffff 50 8d4dd8 e8???????? 8bd0 8b856cffffff }
		$sequence_9 = { 50 56 e8???????? 83c40c 84c0 7404 }

	condition:
		7 of them and filesize <2226176
}