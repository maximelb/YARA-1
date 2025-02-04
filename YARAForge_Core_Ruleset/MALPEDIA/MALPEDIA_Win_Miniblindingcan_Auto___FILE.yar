rule MALPEDIA_Win_Miniblindingcan_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "92bc3e0e-6544-5def-8326-ac0c583fd403"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.miniblindingcan"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.miniblindingcan_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "7b8607880b97335be49c71c4d350efefeb788c1420c4ead3bd8ed006de1090db"
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
		$sequence_0 = { 899424b0000000 81faff000000 7c37 b881808080 488bce f7e2 c1ea07 }
		$sequence_1 = { 8bc6 45338c8c600a0200 c1e808 c1eb08 41c1ea10 0fb6c8 410fb6c0 }
		$sequence_2 = { 48ffc1 49ffc8 75ed 488b542428 4c8d442420 488bce e8???????? }
		$sequence_3 = { 660f6e7310 488d4c2438 f30fe6f6 ff15???????? 488d542430 488d4c2438 ff15???????? }
		$sequence_4 = { 483b442420 0f8710040000 4883fd0f 0f82e7030000 488d7df1 c606f0 }
		$sequence_5 = { 488d0579340000 488905???????? e9???????? 81fb39380000 7513 488d0553340000 488905???????? }
		$sequence_6 = { 48ffc6 448bc1 f7e1 c1ea07 4c89442430 8bc2 }
		$sequence_7 = { 488bc8 ff15???????? 488d1528a70000 488bce 488905???????? ff15???????? 488bc8 }
		$sequence_8 = { 488b4590 83a0c8000000fd 83c8ff e9???????? 4183cfff f6431840 4c8d0dc50dffff }
		$sequence_9 = { 740a b801000000 e9???????? 4533c9 }

	condition:
		7 of them and filesize <453632
}