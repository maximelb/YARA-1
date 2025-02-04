rule MALPEDIA_Win_Mole_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "36f8515b-9850-5f6a-9da2-fab216acb0f1"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mole"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.mole_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "9e8bd455bb765e10346652a5931be596133d0a24ad14fb98b5a58db6c1dd57c3"
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
		$sequence_0 = { 81bdf0fdffff99000000 0f8787710000 8b95f0fdffff 0fb68248c04000 ff248514c04000 81bdf0fdffffd3a7d105 0f8794000000 }
		$sequence_1 = { 6bc000 0385bcf9ffff 898588e5ffff 837d1401 751a 68???????? 68???????? }
		$sequence_2 = { 81bdf0fdffffcde5d405 0f8458400000 81bdf0fdffff41e6d405 0f849e440000 81bdf0fdffff44e6d405 0f84742c0000 e9???????? }
		$sequence_3 = { e9???????? 81bdf0fdffff5625d105 0f8786000000 81bdf0fdffff5625d105 0f8494710000 81bdf0fdffffc624d105 7745 }
		$sequence_4 = { 8d959cefffff 52 68???????? 6801000080 ff15???????? 898584efffff 8d85d4fbffff }
		$sequence_5 = { 8d85ace4ffff 50 6a05 68???????? 8b8dc4e4ffff 51 ff15???????? }
		$sequence_6 = { c7802ceb410002000000 6a04 58 6bc000 8b0d???????? 894c05f8 6a04 }
		$sequence_7 = { 8d9530e2ffff 52 e8???????? 83c404 6a64 68???????? 8d85ecfbffff }
		$sequence_8 = { 83c410 8d959cf9ffff 52 8b8590e5ffff }
		$sequence_9 = { e8???????? e8???????? 898580f7ffff 81bd80f7ffff00300000 7575 6a00 }

	condition:
		7 of them and filesize <297984
}