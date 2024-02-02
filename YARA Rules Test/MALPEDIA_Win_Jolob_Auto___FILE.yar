rule MALPEDIA_Win_Jolob_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "a7a30cc7-8517-58f2-b42f-ed67321f20be"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jolob"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.jolob_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "7066e8000a5c7d67ee5c483efa94c88c66463d1307008135462062b7827f4ff2"
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
		$sequence_0 = { 8bf7 668954242a 668974242e 6683fa0d 750c 66ff442428 }
		$sequence_1 = { 57 ff7318 e8???????? eb2d 8b7c2428 83c70c 57 }
		$sequence_2 = { ff15???????? eb2e 8b7e1c e8???????? }
		$sequence_3 = { 8d45e4 6a10 48 c745f401000000 5b 8945f0 8365f800 }
		$sequence_4 = { 8d45f0 50 ffb714080000 e8???????? 85c0 75df 40 }
		$sequence_5 = { 8b442404 85c0 7501 40 50 6842200000 ff15???????? }
		$sequence_6 = { 8b17 895648 83671000 894714 895f18 890f 8b5104 }
		$sequence_7 = { 6683fa0b 741a 6683fa02 7532 }
		$sequence_8 = { 77f5 8bc7 5e c3 33c0 5e c3 }
		$sequence_9 = { 83ec28 8365f400 53 56 8bf0 8d461c }

	condition:
		7 of them and filesize <196608
}