rule MALPEDIA_Win_Komprogo_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "c2da7eb7-9058-5d5c-a1b3-cf7ec20183b8"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.komprogo"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.komprogo_auto.yar#L1-L125"
		license_url = "N/A"
		logic_hash = "9104f7103ef4ffc58ac248efbbf51156333295a0a474355899a4b0ca03e1b39e"
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
		$sequence_0 = { 8d8670720300 89861b630000 8d96f0a80300 8996e51d0300 8d8e40490400 }
		$sequence_1 = { 8d86a82f0400 89862cb50200 8d86a8700300 89862cd50000 8d86f0380400 898616410200 8d8680720300 }
		$sequence_2 = { 51 8d8618cf0300 8bcf e8???????? 83c404 }
		$sequence_3 = { 8d96e4970300 899625080100 898633080100 8d96d0700300 8996e5650200 8d96f4380400 899643080100 }
		$sequence_4 = { 8d9614790300 899694e70300 8d86242c0400 8986c1210300 8d86e15c0300 898636ca0000 8d86a8ad0300 }
		$sequence_5 = { 0f859e000000 85f6 0f8496000000 8b433c 0fb7541814 }
		$sequence_6 = { 898e47bd0200 8d8e20e20300 898e4f7e0200 8d9694a30300 899674750300 8d8ea82f0400 898e897e0200 }
		$sequence_7 = { ff15???????? 8b95f0fdffff 8902 33db 85f6 7445 8bb5f0fdffff }
		$sequence_8 = { 52 ffd7 8b85d0f3ffff 50 ffd7 8b4df8 5f }
		$sequence_9 = { 8d86e0930200 8986d4930200 8d8ec1610300 898e14b20300 }

	condition:
		7 of them and filesize <1045504
}