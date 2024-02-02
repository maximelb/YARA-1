rule MALPEDIA_Win_Ratankba_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "fd423e85-7c69-52a0-9324-ef5e9762e7e8"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ratankba"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ratankba_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "49523307c1fdb5d69527def26960d83b0ac500a3f11bec0bed9b0e81e333a8ec"
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
		$sequence_0 = { 5d c20800 8b4d0c 803900 7416 807d0b00 7410 }
		$sequence_1 = { 53 b8???????? 668911 e8???????? 8d8ec0000000 c645fc05 33c0 }
		$sequence_2 = { 53 ff15???????? 85c0 740e 8b45fc 85c0 7407 }
		$sequence_3 = { 55 8bec ff4724 8b4724 53 56 394718 }
		$sequence_4 = { e8???????? 8b4310 33ff 3bc7 7649 397e10 7644 }
		$sequence_5 = { 720a b857000780 e8???????? 8b4b04 5f 8944d104 8bc2 }
		$sequence_6 = { 83c414 85c0 744f 8bc8 e8???????? 8bf0 a1???????? }
		$sequence_7 = { 0f849b010000 83c302 46 ebaa 8b5710 8bc6 8955e4 }
		$sequence_8 = { 8975f4 85f6 790b 5e 83c8ff 5b 8be5 }
		$sequence_9 = { 56 66898578efffff 51 83c8ff 8dbd78efffff c7858cefffff07000000 }

	condition:
		7 of them and filesize <303104
}