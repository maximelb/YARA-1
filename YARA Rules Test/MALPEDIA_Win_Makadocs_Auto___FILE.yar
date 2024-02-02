rule MALPEDIA_Win_Makadocs_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "a9ee5e42-4244-5209-b209-43e241078b80"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.makadocs"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.makadocs_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "9e569b2ca005ed56a66b13fc4754517215725a380988d948b175ea6348c2d54c"
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
		$sequence_0 = { 8b5d08 56 57 33f6 33ff 897dfc 3b1cfdf0524200 }
		$sequence_1 = { 8bc6 89a554ffffff 8bfc e8???????? 83c010 8907 51 }
		$sequence_2 = { 8b42f4 8d7001 8b42f8 b901000000 2b4afc 2bc6 0bc1 }
		$sequence_3 = { 83c408 52 8b54243c 8d442438 50 8d4c2478 51 }
		$sequence_4 = { 83c408 c644246834 8b00 8d4c2420 51 8bc8 e8???????? }
		$sequence_5 = { 8b442410 56 e8???????? 85f6 7409 }
		$sequence_6 = { c645fc41 8bc4 89a54cffffff 50 b9???????? e8???????? 8dbd54ffffff }
		$sequence_7 = { ffd5 8b06 3b78f8 7f0f 8978f4 8b0e c6040f00 }
		$sequence_8 = { 8b4c2410 51 ffd7 85c0 744c 8b44241c 50 }
		$sequence_9 = { 3c09 0fb6c0 7605 83c037 eb03 83c030 8806 }

	condition:
		7 of them and filesize <344064
}