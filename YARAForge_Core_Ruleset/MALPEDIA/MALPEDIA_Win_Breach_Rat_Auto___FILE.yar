rule MALPEDIA_Win_Breach_Rat_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "f70ab09f-8643-5192-b966-55a3dab88920"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.breach_rat"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.breach_rat_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "8cb7f4b75bac273a3c54152da1b9e63a78dde17954dfd874b266899e47404327"
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
		$sequence_0 = { 5e 5b 8be5 5d c20400 884c240f 8d442418 }
		$sequence_1 = { 50 8bce e8???????? 8bc8 e8???????? 8d8dacf6ffff c745fcffffffff }
		$sequence_2 = { c1e81f 03c2 8985d8feffff 0f8479080000 83c724 89bde0feffff 8d9b00000000 }
		$sequence_3 = { c741140f000000 c7411000000000 c60100 e8???????? ff7510 8d4dd4 ff750c }
		$sequence_4 = { 8be5 5d c3 68???????? 8bce e8???????? b001 }
		$sequence_5 = { 8b5508 8bcb 0fb712 8bff 663910 7408 83c002 }
		$sequence_6 = { 42 8b5de0 3bd6 72f2 8b45a4 2bc6 50 }
		$sequence_7 = { c7471800010000 8b4df4 8bc7 c7470400000000 c7470800000000 5f 5e }
		$sequence_8 = { eb20 84c9 74ed 8b4df0 8d45d8 50 e8???????? }
		$sequence_9 = { e8???????? 68???????? 8d859cf4ffff c745fc5c000000 50 8bce e8???????? }

	condition:
		7 of them and filesize <645120
}