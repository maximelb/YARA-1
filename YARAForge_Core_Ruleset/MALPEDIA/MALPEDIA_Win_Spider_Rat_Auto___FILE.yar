rule MALPEDIA_Win_Spider_Rat_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8b8fb932-c9c0-5d1a-a1ff-94b4f85b8abe"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.spider_rat"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.spider_rat_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "86dc62debebef6e9c395034c4368c0804fc586029188907fa2c1533f611f9771"
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
		$sequence_0 = { e9???????? 4883c708 488b1f 488bd3 488d8c2490000000 e8???????? }
		$sequence_1 = { 418bc3 4c8d5c2460 498b5b18 498b7328 498be3 5f c3 }
		$sequence_2 = { 488b6c2438 488b742440 8958f0 488b07 4863cb 488b5c2430 c6040100 }
		$sequence_3 = { e8???????? 488b4d70 4883c160 ff15???????? 90 488d05b726fbff eb00 }
		$sequence_4 = { 84c0 7471 4885f6 7505 83fd01 7415 488b8f88000000 }
		$sequence_5 = { 7458 6683fa01 7452 ff15???????? 4c8bc6 8bd5 0fb7cb }
		$sequence_6 = { 7410 488b8f88000000 e8???????? 85c0 7802 33db 8bc3 }
		$sequence_7 = { 498bd8 488bf2 488bf9 4d85c0 7430 4885d2 742b }
		$sequence_8 = { ff15???????? 488bc8 e8???????? 488d15d3b00300 488bce 488905???????? ff15???????? }
		$sequence_9 = { ba03000000 488d442440 448d4a61 448d42fe 4889442420 e8???????? }

	condition:
		7 of them and filesize <1107968
}