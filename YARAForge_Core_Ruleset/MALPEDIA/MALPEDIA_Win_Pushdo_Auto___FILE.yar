rule MALPEDIA_Win_Pushdo_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ad774ebd-627a-5818-9f5f-1b251e52fd7e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pushdo"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.pushdo_auto.yar#L1-L208"
		license_url = "N/A"
		logic_hash = "daece01a3a8065197470b42fa0923405b1cfbd8c63e62002ad7e9af51850eb51"
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
		$sequence_0 = { 50 ff15???????? 33d2 b9ffff0000 }
		$sequence_1 = { f7f9 33c9 ba88020000 f7e2 0f90c1 }
		$sequence_2 = { 8b45fc b10b d3c0 61 }
		$sequence_3 = { 81ec18010000 6800010000 6a00 8d85f0feffff }
		$sequence_4 = { 736a 8b45fc 0fbe8c05f0feffff 038de8feffff 8b45fc }
		$sequence_5 = { 0fbe1410 03ca 81e1ff000000 898de8feffff 8b85e8feffff 8a8c05f0feffff }
		$sequence_6 = { c785e8feffff00000000 c745f400000000 c745fc00000000 eb09 8b55fc 83c201 8955fc }
		$sequence_7 = { 33d1 8b450c 0345fc 8810 e9???????? }
		$sequence_8 = { e8???????? 83c41c 85c0 7503 8975fc }
		$sequence_9 = { 53 53 894808 8b4e14 50 }
		$sequence_10 = { 53 6a18 ffd6 ffb5f4f7ffff 8d85f4fbffff 50 }
		$sequence_11 = { 0fb6c3 6a03 33d2 5f f7f7 }
		$sequence_12 = { 8d45ec 50 8d4598 50 57 57 }
		$sequence_13 = { 52 8d8588fbffff 50 e8???????? }
		$sequence_14 = { a1???????? 6bc00a 057f0a0000 33d2 b9a1190000 f7f1 }
		$sequence_15 = { e8???????? 89859cd3ffff 83bd9cd3ffff00 0f8ea0000000 8d8550d3ffff 50 }
		$sequence_16 = { 3b4dd8 7f28 8b55e4 3b55d8 0f85cf000000 8b45d8 }
		$sequence_17 = { 81bd5cfeffff70170000 0f83e2010000 8b855cfeffff 33d2 b964000000 f7f1 85d2 }
		$sequence_18 = { ff55e4 8945c8 eb11 8b4dd4 }
		$sequence_19 = { 83c404 c1e002 8945e4 8b4de4 }
		$sequence_20 = { 50 8b4dfc 51 e8???????? 85c0 7c3b 8b55f0 }

	condition:
		7 of them and filesize <163840
}