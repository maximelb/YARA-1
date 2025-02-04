rule MALPEDIA_Win_Curator_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "fc957193-82db-5d48-97f1-8bf3e9847701"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.curator"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.curator_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "a3bde063a66b4d9394e6eeb42680e73ad8b937005775febd69fd7690156b149c"
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
		$sequence_0 = { 428a8c01e0590600 482bd0 8b42fc d3e8 49895708 41894718 0fb60a }
		$sequence_1 = { 4903c1 483bc3 0f84b3000000 4983c004 413bca 72e0 488d6b10 }
		$sequence_2 = { 7507 8bc6 e9???????? 44396728 0f8527010000 8d14f5ffffffff 488d4c2458 }
		$sequence_3 = { 448b542424 be01000000 389c24b8000000 7449 385c2420 }
		$sequence_4 = { 8b4308 25ffffff0f 3dffffff0f 740b 488b03 488bd8 4885c0 }
		$sequence_5 = { 660f7ef9 d1c1 894a30 660f6dff 660f7ef9 c1c10a 890a }
		$sequence_6 = { f60708 7505 4885c0 7508 48c7432000409901 488b5c2438 4883c420 }
		$sequence_7 = { 4183fc01 740b 41bc01000000 e9???????? 488b4dd7 e8???????? 488b4ddf }
		$sequence_8 = { 0f843ffeffff 488d55c0 488d4db0 e8???????? e9???????? 488d46ff 488905???????? }
		$sequence_9 = { 0f4ed0 e8???????? 488d1517130400 488d4c2420 e8???????? cc }

	condition:
		7 of them and filesize <1265664
}