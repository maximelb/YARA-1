rule MALPEDIA_Win_Defray_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ee2cc914-ed1c-504f-bf38-50caf0bf4350"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.defray"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.defray_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "6779b35681313abc4956d5610d5c5eb736ab6b4450531cda5b5e81d10fef89b6"
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
		$sequence_0 = { 3bc1 75c3 894db4 8d8d60ffffff e8???????? 84c0 7419 }
		$sequence_1 = { 8b0b 8bc1 83e13f c1f806 6bc930 8b048568f34800 }
		$sequence_2 = { 33c0 8dbd94f5ffff a5 a5 a5 8dbda0f5ffff be???????? }
		$sequence_3 = { 2bf2 8d7b1f c1ef05 c1fe02 897d08 3bfe 7322 }
		$sequence_4 = { 83c9f8 41 0f2825???????? 8bd6 0f282d???????? 2bd1 0f57db }
		$sequence_5 = { 33c6 03d0 8b85e0feffff 03940514ffffff 039008d54700 03d7 8bbde4feffff }
		$sequence_6 = { 56 6a02 51 8975fc 8975f8 ff15???????? }
		$sequence_7 = { 663907 7407 83c702 3bfe 75f4 3bfe 0f8434feffff }
		$sequence_8 = { 8bf0 85f6 0f8528050000 8b45d8 c745f4006d4100 8945f8 837d1000 }
		$sequence_9 = { 6a0c 99 5f f7ff 8365e000 8b7508 85c0 }

	condition:
		7 of them and filesize <1253376
}