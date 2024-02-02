rule MALPEDIA_Win_Redyms_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "da0046e8-7d1d-55ff-bc47-8c4a49be473c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.redyms"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.redyms_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "5d36da1238e7bd61b571d2194e775b3f30f76bd59bc3908f725087cbecb38f2e"
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
		$sequence_0 = { 32d8 80f3fb 8819 40 41 6683f805 72ee }
		$sequence_1 = { 8b4604 50 6a00 ffd3 50 ffd7 56 }
		$sequence_2 = { 33c5 8945fc 56 8b35???????? 8d4ddc 8bd1 }
		$sequence_3 = { 85f6 0f84e4000000 8b3d???????? 8d4de8 8bd1 33c0 }
		$sequence_4 = { a1???????? 33c5 8945fc 56 c785ccfeffff04010000 7203 }
		$sequence_5 = { c745d000000000 ff15???????? 5f 85c0 }
		$sequence_6 = { 7417 8b45f4 8b4df8 50 51 56 ff15???????? }
		$sequence_7 = { 8b4608 8b4e04 50 6a00 e8???????? 83c408 }
		$sequence_8 = { 83c8ff 5b 8be5 5d c3 8bc6 5f }
		$sequence_9 = { 8d5828 53 8945fc ffd7 83caff 8bc6 f00fc110 }

	condition:
		7 of them and filesize <98304
}