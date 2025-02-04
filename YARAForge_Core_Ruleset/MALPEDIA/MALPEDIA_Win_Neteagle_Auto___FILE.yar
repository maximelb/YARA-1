rule MALPEDIA_Win_Neteagle_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1db1653f-5505-5d3a-ba38-0bc41fb6ed7f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.neteagle"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.neteagle_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "6f0c75693d906262c5895d882d984643cdff0e946d0c3df9bf0f7a28d5c9d704"
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
		$sequence_0 = { 8d4c2418 e8???????? 8d4c2418 e8???????? 8b84241c300000 89742410 3bc6 }
		$sequence_1 = { 83c408 50 51 8d442428 }
		$sequence_2 = { c68424240200000d 8bcc 8964242c 68???????? e8???????? }
		$sequence_3 = { 6a00 6a00 57 56 6840800000 ff15???????? }
		$sequence_4 = { c684241802000018 8bcc 89642424 8d542428 52 e8???????? 8d442420 }
		$sequence_5 = { 8d4dec e8???????? 6800100000 8d4dec c645fc0d e8???????? 8b16 }
		$sequence_6 = { 8d4c2428 c68424540c000006 e8???????? 8d542414 68???????? 8d442414 52 }
		$sequence_7 = { c684241002000004 e8???????? 8d4e34 c684241002000005 e8???????? 8d4e38 c684241002000006 }
		$sequence_8 = { 52 6a00 6a00 8b3d???????? ffd7 83f820 7f1b }
		$sequence_9 = { 888c0414010000 40 3bc6 7ced 8d942414010000 8d4c240c 52 }

	condition:
		7 of them and filesize <262144
}