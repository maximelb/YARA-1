rule MALPEDIA_Win_Moker_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "18389526-a462-5233-a3a7-297ee29d064f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.moker"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.moker_auto.yar#L1-L160"
		license_url = "N/A"
		logic_hash = "12a75630b6f84d2ec097d0e96068cb391171b00fda112afc8eea40b8efef358b"
		score = 75
		quality = 73
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
		$sequence_0 = { 0302 8945d4 8b4dd4 83c102 }
		$sequence_1 = { 0302 8945e8 eb09 8b45e8 }
		$sequence_2 = { 0302 8945e8 8b4df8 8b55fc }
		$sequence_3 = { 0302 50 e8???????? 83c404 3b450c 750b 8b4df0 }
		$sequence_4 = { 0301 8945e0 e8???????? 8b55e8 }
		$sequence_5 = { 0302 8945dc 8b45dc 83c002 }
		$sequence_6 = { 6a00 6a04 6a01 68000000c0 }
		$sequence_7 = { 0100 83c414 85c0 7502 eb0a }
		$sequence_8 = { 89e5 ff7508 ed 2e5c 034508 }
		$sequence_9 = { 48 8b7c2428 48 39f7 7413 fc }
		$sequence_10 = { 49 8b4c2408 ffd0 48 }
		$sequence_11 = { d16000 d0806200a501 40 00b070e000e0 31e0 00d5 31c0 }
		$sequence_12 = { 880424 49 89442430 49 89742458 66813e4d5a }
		$sequence_13 = { 50 51 52 48 }
		$sequence_14 = { c20800 55 89e5 ff750c ed }
		$sequence_15 = { 89e5 60 8b7d08 6887000000 ed }

	condition:
		7 of them and filesize <1761280
}