rule MALPEDIA_Win_Unidentified_061_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "59888b60-a3e6-5e9f-a441-429646fe0731"
		date = "2023-07-11"
		modified = "2023-07-15"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_061"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.unidentified_061_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "ee3ce5b6c77f09c690f7a934c26be09c58c4fcdee70275b61c00e527d8aa097d"
		score = 75
		quality = 75
		tags = "FILE"
		version = "1"
		tool = "yara-signator v0.6.0"
		signator_config = "callsandjumps;datarefs;binvalue"
		malpedia_rule_date = "20230705"
		malpedia_hash = "42d0574f4405bd7d2b154d321d345acb18834a41"
		malpedia_version = "20230715"
		malpedia_license = "CC BY-SA 4.0"
		malpedia_sharing = "TLP:WHITE"

	strings:
		$sequence_0 = { 8d85d4fdffff 50 e8???????? c9 }
		$sequence_1 = { 89b5f0fdffff 899decfdffff 89b5f4feffff 899df0feffff ff15???????? 8945fc }
		$sequence_2 = { 51 8365fc00 8d45fc 50 68???????? 6801000080 ff15???????? }
		$sequence_3 = { 8945f0 0fb705???????? 50 ff15???????? 668945ee }
		$sequence_4 = { 68???????? 56 ff15???????? 83c41c 8d4601 5e eb09 }
		$sequence_5 = { 7417 03f3 3bf7 7ccb eb2f 7d29 }
		$sequence_6 = { 83cfff c6457300 3b7566 7cb5 3b7566 }
		$sequence_7 = { 53 57 6a04 33ff 33db }
		$sequence_8 = { 5b c9 c20800 81ec00040000 68???????? 68???????? ff15???????? }
		$sequence_9 = { eb04 c645fb3d 6a05 8d45f8 50 ff750c c645fc00 }

	condition:
		7 of them and filesize <360448
}