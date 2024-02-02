rule MALPEDIA_Win_Xfscashncr_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6ee5ebd5-3415-5529-b820-2ef4f50b7f37"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.xfscashncr"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.xfscashncr_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "9081cad85dadcbc9b76a9d19d302868541784728cc3671f5b0e80a45a72963e6"
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
		$sequence_0 = { 0fb6c8 85c9 744e 8b4d10 e8???????? 0fb730 8b8d54ffffff }
		$sequence_1 = { 50 8b4de8 8b5110 52 6a00 682d010000 8b45e8 }
		$sequence_2 = { 898518feffff 8b8d18feffff 898d14feffff c745fc00000000 8b9514feffff 52 e8???????? }
		$sequence_3 = { 686b070000 68???????? 8b4508 50 e8???????? 83c40c 8b4508 }
		$sequence_4 = { 8b4de4 66891401 0fb755f4 81fa00800000 7f27 0fb745f4 3d00800000 }
		$sequence_5 = { 83c418 8b08 8b5004 894d10 895514 c78564ffffff00000000 eb35 }
		$sequence_6 = { e8???????? 0fb6d0 85d2 7557 837de802 750f 8b4520 }
		$sequence_7 = { 837d0800 744a b801000000 85c0 7441 8b4508 83c008 }
		$sequence_8 = { 8b4d08 d9ee d95c81fc 8b55f0 8b4508 d90490 d9ee }
		$sequence_9 = { 8b5508 83e21f c1e206 8b048dc0195700 0fbe4c1004 81e17fffffff 8b5508 }

	condition:
		7 of them and filesize <3126272
}