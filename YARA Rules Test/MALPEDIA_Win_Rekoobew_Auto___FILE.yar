rule MALPEDIA_Win_Rekoobew_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "73ccfc35-4eed-5955-a644-c948264eda18"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rekoobew"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.rekoobew_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "445ddabcfd3896aee22b87d60b9d2106a9693bf00a56789028f0bf36c80e8900"
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
		$sequence_0 = { 337dec 337dd0 d1c7 897db8 8d8c39dcbc1b8f 894df0 89c1 }
		$sequence_1 = { 89e5 57 56 53 81ecbc000000 e8???????? 8945e0 }
		$sequence_2 = { 89df 0fb63482 c1e618 0fb65c8201 }
		$sequence_3 = { 8b1c9de0944000 c1e310 31df 8b4dd8 0fb6dd 8b1c9de0944000 c1e308 }
		$sequence_4 = { 7409 3b7510 0f8fd3000000 0fb645e8 c1e004 89c7 b8ffffffff }
		$sequence_5 = { c744240808000000 89742404 891c24 e8???????? c744240804000000 897c2404 891c24 }
		$sequence_6 = { 8b3c95e07c4000 33bb54010000 8b55f0 c1ea18 333c95e0704000 89f2 c1ea10 }
		$sequence_7 = { 56 53 83ec5c 8b450c 0fb65003 0fb638 }
		$sequence_8 = { 89f1 31d1 31d9 8d0c0f 89c7 c1c705 01f9 }
		$sequence_9 = { 895008 8b500c 89d6 c1ee18 8b3cb5e0944000 89d6 }

	condition:
		7 of them and filesize <248832
}