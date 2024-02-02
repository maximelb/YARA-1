rule MALPEDIA_Win_Anel_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "77d9607f-3592-578d-9a57-0a9e2e4b1267"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.anel"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.anel_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "1c7f9ff41f497369b4973c110e6ba50d48e821bb90418969cf9b52dfa74f7f8e"
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
		$sequence_0 = { f7fe 43 3bd8 7621 8bd0 d1ea be91cfba01 }
		$sequence_1 = { eb24 8bca 83e910 3b5904 7f17 7c07 }
		$sequence_2 = { 8bf9 2bf8 85c0 7411 eb03 83c010 3bc1 }
		$sequence_3 = { c645fc06 e8???????? c645fc07 8bc8 c645fc08 e8???????? 8bc6 }
		$sequence_4 = { 897814 895810 89458c 8818 8d4678 }
		$sequence_5 = { c1e704 037d08 a5 a5 a5 a5 5f }
		$sequence_6 = { 53 33ff c645fc00 e8???????? 837d1c08 8b4508 7303 }
		$sequence_7 = { 8bec 51 56 8bf0 33c0 894610 c746140f000000 }
		$sequence_8 = { 8d8bd0000000 50 8d55d8 c645fc01 e8???????? 6a01 33ff }
		$sequence_9 = { e8???????? 8bd6 8d8dc8feffff c645fc01 e8???????? c645fc02 83bd04ffffff05 }

	condition:
		7 of them and filesize <376832
}