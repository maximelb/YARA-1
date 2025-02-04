rule MALPEDIA_Win_Whiskerspy_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ad364f6a-593c-546a-abca-058cacdb86c1"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.whiskerspy"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.whiskerspy_auto.yar#L1-L150"
		license_url = "N/A"
		logic_hash = "5c2084905c4059cab930cb01fc75781ec2a6ce873c993665138e09c62922860b"
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
		$sequence_0 = { 8b06 8bcf d3e8 a801 }
		$sequence_1 = { 488bcf c645e57d c645e67d c645e77d c645e87d }
		$sequence_2 = { 458bc6 488d95c0020000 488d8d80010000 ff15???????? 488d4c2460 ff15???????? }
		$sequence_3 = { 5d c3 418bca 48899c2440020000 }
		$sequence_4 = { 33c0 e9???????? c685c0020000c8 c685c1020000d3 }
		$sequence_5 = { e8???????? 0f2805???????? 4c8d45b0 0f280d???????? 488d55f0 }
		$sequence_6 = { 8bf9 488d1507c10000 b903000000 4c8d05f3c00000 e8???????? }
		$sequence_7 = { 85c0 7428 817c245000040000 74b4 eb1c }
		$sequence_8 = { 0fbec1 83e820 83e07f 8b04c5d43f4300 }
		$sequence_9 = { 33c5 8945fc 53 8bd9 899540ffffff 8b4d0c }
		$sequence_10 = { f30f38f6f8 897de4 b800000000 8b7de8 660f38f6f9 }
		$sequence_11 = { 8b45ec 3bc6 7c3a 7f04 }
		$sequence_12 = { 6af6 ff15???????? 8b04bd403d4400 834c0318ff 33c0 }
		$sequence_13 = { 75f8 8bfe 8bca 8bb588feffff }
		$sequence_14 = { a3???????? 8bcf e8???????? 8325????????00 8325????????00 }

	condition:
		7 of them and filesize <591872
}