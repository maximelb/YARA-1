rule MALPEDIA_Win_Meduza_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "e4f4d329-00f5-5eac-b6fa-1a17dabc236f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.meduza"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.meduza_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "5c31e3491e238f84a3f72990d6fa7fa5c8ed914b3efa6ee6f598848d375c51b9"
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
		$sequence_0 = { ff75c8 8d55ac c645fc01 8d8d78ffffff e8???????? 83c404 8d4d94 }
		$sequence_1 = { c645fc23 c785f8eaffff02000000 c78548f8ffff3ebfeb85 c7854cf8ffff59dea06d 8b8548f8ffff 8b8d4cf8ffff 898d04f3ffff }
		$sequence_2 = { 83c408 c645fc15 8b4590 3b4580 0f84e9020000 66660f1f840000000000 8d7020 }
		$sequence_3 = { 8d45e0 c645fc02 50 e8???????? 8b4de4 83c404 8bf8 }
		$sequence_4 = { 898538f4ffff 898d3cf4ffff c785d8f6ffffdf03fddd c785dcf6ffffe227d929 8b85d8f6ffff 8b8ddcf6ffff 898540f4ffff }
		$sequence_5 = { 898de4feffff 8985e0feffff c78558ffffff0d5f1759 c7855cfffffff2314621 8b8558ffffff 8b8d5cffffff 898decfeffff }
		$sequence_6 = { c78548f8ffff68297235 c7854cf8ffff9d412b44 8b8548f8ffff 8b8d4cf8ffff 898dbcf5ffff 8985b8f5ffff c78548f8ffff5fcb84e8 }
		$sequence_7 = { 898ddce7ffff c785d8e4ffffdf03fddd c785dce4ffffe227d929 8b85d8e4ffff 8b8ddce4ffff 8985e0e7ffff }
		$sequence_8 = { e9???????? 807b0c00 0f8485010000 6a02 68???????? ff5004 8b4314 }
		$sequence_9 = { c7854cf8ffff9d412b44 8b8548f8ffff 8b8d4cf8ffff 0f288d90f4ffff 898dfcfbffff 8d8d90f4ffff 8985f8fbffff }

	condition:
		7 of them and filesize <1433600
}