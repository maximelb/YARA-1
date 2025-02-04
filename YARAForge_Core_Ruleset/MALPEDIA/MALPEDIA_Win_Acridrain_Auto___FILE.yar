rule MALPEDIA_Win_Acridrain_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "82271a88-0572-5daa-a06b-4b68b32ae23f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.acridrain"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.acridrain_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "2ef6b9a2838948e7218bd1e79fe0257da485657bd990a4bc6b62c314342a8e67"
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
		$sequence_0 = { eb03 8b4dd0 8b45e0 8b55cc 8945cc 8a45f0 8955e0 }
		$sequence_1 = { ff76a4 53 e8???????? 83c428 8945dc e9???????? 6a00 }
		$sequence_2 = { ffd0 8b75f0 8bc8 83c414 85c9 0f85c5000000 0fce }
		$sequence_3 = { eb0c 8b4d9c 83c104 894d9c 8b41fc 8945a0 8bc8 }
		$sequence_4 = { eb5d 8b03 8b8890860000 803900 7520 8d442414 6801040000 }
		$sequence_5 = { 8b8520ffffff 33ff 8b10 85d2 0f8ea6000000 33c9 898d50ffffff }
		$sequence_6 = { f6459c01 0f84ae0b0000 8bc6 83e007 3bf0 0f83d50a0000 e9???????? }
		$sequence_7 = { 8b4748 56 ffd0 8b7584 83c410 8bbd78ffffff eb09 }
		$sequence_8 = { ffb5d0fdffff e8???????? 83c408 8985d4fdffff 85c0 0f85844b0000 ffb5d0fdffff }
		$sequence_9 = { e9???????? 83fe02 750c c7872005000003000000 eb7b c7872005000000000000 83fe03 }

	condition:
		7 of them and filesize <2244608
}