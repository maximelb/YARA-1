rule MALPEDIA_Win_Mirai_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "81ec826d-82b4-5432-816d-754db384603c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mirai"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.mirai_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "141eec0723c6032d1109e3ff4e6c77adfb4c0eb70a7f0ab199e555f3b3d9eb19"
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
		$sequence_0 = { e8???????? 83c408 85c0 7535 8b742408 50 68???????? }
		$sequence_1 = { 8b8d48feffff e8???????? 8d4db0 e8???????? 8365fc00 83a578feffff00 8d8554feffff }
		$sequence_2 = { e8???????? 83c40c 5d c3 8b5510 8b450c 8b4904 }
		$sequence_3 = { 8bf3 c1ee18 334cb500 8b2d???????? 0fb6f2 334cb500 8b35???????? }
		$sequence_4 = { 8bcd e8???????? 8bc8 e8???????? 8b10 8b12 6a5c }
		$sequence_5 = { e8???????? 8b54244c 56 53 52 53 ff15???????? }
		$sequence_6 = { c3 55 8bec 51 51 6a17 68???????? }
		$sequence_7 = { c20400 55 8bec 83ec14 894df0 c745f401000000 837df400 }
		$sequence_8 = { 8bbcbd00100000 81e70000ff00 33f7 0fb6fd 8bbcbd00100000 81e700ff0000 33f7 }
		$sequence_9 = { e8???????? 8365f800 8b45fc c9 c3 55 8bec }

	condition:
		7 of them and filesize <7086080
}