rule MALPEDIA_Win_Orpcbackdoor_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "605ecf11-b36e-51cd-8e37-c406fe5ee743"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.orpcbackdoor"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.orpcbackdoor_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "a975ab0f24495978f9e8b667b3f6b02066e8ac424646b3588e19f69238c5dbdd"
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
		$sequence_0 = { 8b45fc 83e818 50 e8???????? 59 59 }
		$sequence_1 = { 59 ffb5e4f6feff ffb568f5feff 8d8594f9ffff 50 e8???????? 83c40c }
		$sequence_2 = { 6a0c 59 be???????? 8dbdc0faffff f3a5 66a5 a4 }
		$sequence_3 = { 8b45c4 0fbe00 83f87f 7452 8b45c4 0fbe00 85c0 }
		$sequence_4 = { 753e 8b45c8 40 40 3b4524 7734 8b4520 }
		$sequence_5 = { 83a5b0fdffff00 8d85b0fdffff 50 6a02 8b85b4fdffff 8b00 ffb5b4fdffff }
		$sequence_6 = { 8841fd eb0e a1???????? 0345f4 c640fd00 eb05 }
		$sequence_7 = { 6a01 6a40 6a01 6a01 8d8da8fcfeff e8???????? 50 }
		$sequence_8 = { 3c5a 7712 0fbec1 83e820 83e07f 8a044589700310 }
		$sequence_9 = { 0fbe4001 83f858 7508 8b45c4 40 40 }

	condition:
		7 of them and filesize <918528
}