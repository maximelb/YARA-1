rule MALPEDIA_Win_Karma_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "7f63a996-b29b-562f-996a-826393522cf0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.karma"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.karma_auto.yar#L1-L116"
		license_url = "N/A"
		logic_hash = "2f60ce68960b60e178a1e413eabfae876f08564938fc3ab9af48ba4bf8caac6e"
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
		$sequence_0 = { 8b7f08 8bc7 d3e8 8b4d08 }
		$sequence_1 = { 8bf9 8955f0 33c0 663907 7408 40 66833c4700 }
		$sequence_2 = { 0f1006 0f114318 e8???????? 5f }
		$sequence_3 = { ebc5 33ff 6690 0fb78ffc434000 }
		$sequence_4 = { ff15???????? 6a00 8d442444 50 6800710200 }
		$sequence_5 = { 660fefc8 0f1148f0 83e901 75e7 8d55e0 }
		$sequence_6 = { 894dfc 894dc0 894dc4 894dc8 894dcc }
		$sequence_7 = { 8b4c2418 8b44241c 83c140 6a00 6a00 83d000 }
		$sequence_8 = { 8d4e20 0f47ce 2bca 750e 6685db 0f84c5000000 }
		$sequence_9 = { 66833c45f051400000 75f4 33d2 663915???????? 7415 660f1f840000000000 }

	condition:
		7 of them and filesize <49208
}