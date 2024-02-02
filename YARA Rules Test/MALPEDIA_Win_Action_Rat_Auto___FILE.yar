rule MALPEDIA_Win_Action_Rat_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b171bb40-9b64-5f84-b8a8-e9db33470a7a"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.action_rat"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.action_rat_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "d6b5f7381b8e2ad2725999fb927500f671ba77c3542ba9198900375907d98a2d"
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
		$sequence_0 = { 8d4d0c e8???????? 8b4508 8b4df4 64890d00000000 59 5b }
		$sequence_1 = { 8b55f8 52 8b4dfc 83c134 e8???????? 8b00 50 }
		$sequence_2 = { 83c270 52 8b4dfc 83c170 }
		$sequence_3 = { e8???????? c745d400000000 eb09 8b4dd4 83c101 894dd4 8d4d0c }
		$sequence_4 = { 7420 0fb645fb 50 8b4df4 8b4918 e8???????? 0fb6d0 }
		$sequence_5 = { 0fb74202 50 ff15???????? 0fb7c8 8b5514 890a }
		$sequence_6 = { 6a00 8b45fc 50 8b4d08 51 e8???????? 83c418 }
		$sequence_7 = { e8???????? 8d8ddcfbffff e8???????? c645fc0e 6a00 68e0930400 6a00 }
		$sequence_8 = { 0de0000000 b901000000 6bd100 8b4d0c 880411 8b5508 c1fa06 }
		$sequence_9 = { 8b4df4 3b4df8 750b 68???????? ff15???????? 8b55ec 833a22 }

	condition:
		7 of them and filesize <480256
}