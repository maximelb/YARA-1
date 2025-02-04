rule MALPEDIA_Win_Jackpos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "095b3872-c166-52ad-a52d-1faeb1056a2e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jackpos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.jackpos_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "45db7695f021a95c6d3c662e5ca72119b052256c8a3ceeaf6c22b39c2e1870c0"
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
		$sequence_0 = { 8b5604 eb03 8d5604 2bc7 03c0 50 }
		$sequence_1 = { d1f8 03d0 eb0f 85c0 }
		$sequence_2 = { 75ed 837df408 8b4dfc 7202 }
		$sequence_3 = { 8b4508 e8???????? 8b7d08 8b550c 8b4718 3b7d10 747e }
		$sequence_4 = { 52 8bf0 53 897588 e8???????? }
		$sequence_5 = { 7303 8d45d8 8d4dac 51 50 e8???????? 8b55b4 }
		$sequence_6 = { 85ff 7f87 5f 8bc6 5e 5b }
		$sequence_7 = { 8b4604 33c9 66890c03 5f 8bc6 }
		$sequence_8 = { 765a 8b4a14 57 3bc1 734e 2bc8 8bf9 }
		$sequence_9 = { 037214 ebc4 5f 5e 5d }

	condition:
		7 of them and filesize <319488
}