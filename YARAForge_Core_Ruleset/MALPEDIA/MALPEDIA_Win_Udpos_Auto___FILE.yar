rule MALPEDIA_Win_Udpos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "49a8c6d9-3919-52d8-b9a1-bc6d433f2d9f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.udpos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.udpos_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "ffccd56d9879c5a40153befe0b99e30b88fecb63ad13af5b9ec71c40ee069e0c"
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
		$sequence_0 = { 8bc8 23cf 0bf1 8b4dfc 03d6 0353fc 8bf0 }
		$sequence_1 = { 8b4dfc 83c404 5f 8bc3 33cd }
		$sequence_2 = { 52 e8???????? 83c418 833d????????00 0f8596000000 8d85ccf3ffff 50 }
		$sequence_3 = { 8888f8e84000 40 ebe6 ff35???????? ff15???????? 85c0 7513 }
		$sequence_4 = { 7e1e 8d575c 85f6 7517 6639944dfcfdffff 7508 be01000000 }
		$sequence_5 = { 51 e8???????? a1???????? 8b3d???????? 83c418 }
		$sequence_6 = { 7e0d 83f809 7e08 a1???????? 8b7024 56 8d4d9c }
		$sequence_7 = { e8???????? 68f4010000 6a00 8d8dc8fcffff 51 e9???????? }
		$sequence_8 = { ffd6 8d953cffffff 52 8d85e0f8ffff 50 ffd6 }
		$sequence_9 = { 40 3bc3 7cef 8b85a0feffff 50 e8???????? }

	condition:
		7 of them and filesize <163840
}