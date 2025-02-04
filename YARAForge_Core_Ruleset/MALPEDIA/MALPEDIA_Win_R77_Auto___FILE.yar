rule MALPEDIA_Win_R77_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "79566c97-5b66-5f14-a1d3-bc9852e6d698"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.r77"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.r77_auto.yar#L1-L154"
		license_url = "N/A"
		logic_hash = "76c887c6ccc22f9627519af58959f5ccdb37c325ffba24612ced9e4b32cde701"
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
		$sequence_0 = { 740c 8b4f0c e8???????? 85c0 }
		$sequence_1 = { 740b 8b0f e8???????? 85c0 }
		$sequence_2 = { 33c9 4c8d05e3d40000 488d15e4d40000 e8???????? 4885c0 740f }
		$sequence_3 = { 0f8517030000 488d0d58ad0100 ff15???????? 4885c0 7412 }
		$sequence_4 = { 4c8d058bfb0000 488b45e0 48c1e820 85c0 755d 8b45e0 }
		$sequence_5 = { 33d2 660f1344243c 33c9 e8???????? 59 }
		$sequence_6 = { f7d8 1bc0 40 85c0 750b 46 3b37 }
		$sequence_7 = { c1fa06 6bc838 8b0495f8a00110 f644082801 7422 8d4508 8975f8 }
		$sequence_8 = { 745c ffc1 413bc8 72f1 4885ff }
		$sequence_9 = { 660f58e0 660fc5c400 25f0070000 660f28a050680110 660f28b840640110 660f54f0 660f5cc6 }
		$sequence_10 = { 7408 8b442430 8bc8 cd29 488d0df6980100 }
		$sequence_11 = { 03f3 03c3 894508 833e00 7447 8b7df0 8b08 }
		$sequence_12 = { 488b03 833800 7513 488d15e3a70000 488d0dbca70000 }
		$sequence_13 = { 33c0 c3 56 e8???????? ff15???????? }

	condition:
		7 of them and filesize <350208
}