rule MALPEDIA_Win_Threebyte_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ce3faee0-35b6-5807-9d64-6a9a343be0ab"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.threebyte"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.threebyte_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "ea76c04ceecd329a1dbc8646fe87d0982e2f7a41db170c209ba00ee2ed2e0d90"
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
		$sequence_0 = { 85c0 0f8511010000 c68514ffffff5b c68515ffffff3e c68516ffffff3e c68517ffffff20 }
		$sequence_1 = { 8a8415fcfeffff 88840dfcfeffff 8b8df0feffff 8a95f8feffff 88940dfcfeffff }
		$sequence_2 = { 6a00 8d4dbc 51 6801000080 ff15???????? 85c0 7407 }
		$sequence_3 = { e8???????? 83c404 83c8ff eb44 8b8d24f7ffff 038d14f7ffff 898d24f7ffff }
		$sequence_4 = { 8b8d10f7ffff ff510c 8b9564f7ffff 52 8b8510f7ffff ff500c 8b4df4 }
		$sequence_5 = { 8d8d68f3ffff e8???????? e9???????? c78568f2ffff00000000 c645fc00 8d4df0 e8???????? }
		$sequence_6 = { 33c0 8dbddefcffff f3ab 66ab c78594faffff00010000 8d9594faffff 52 }
		$sequence_7 = { 8b4d10 894df8 c745ec00000000 eb09 8b55ec }
		$sequence_8 = { e8???????? 8985a8fbffff 668b15???????? 668995ecfbffff b9ff000000 }
		$sequence_9 = { e8???????? 83c404 e9???????? c7459801010000 8b9564ffffff 8955a4 8b45ec }

	condition:
		7 of them and filesize <180224
}