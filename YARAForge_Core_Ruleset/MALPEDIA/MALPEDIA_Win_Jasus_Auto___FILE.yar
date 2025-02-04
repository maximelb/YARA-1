rule MALPEDIA_Win_Jasus_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "f0f57156-3d71-51a0-8417-ea38ed1ea26d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jasus"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.jasus_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "8597018770d02606e940d401ffb7afc270f8035f09e3cd93e76c94000290c2f1"
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
		$sequence_0 = { 50 51 6689956cffffff ffd3 83c40c 833d????????00 }
		$sequence_1 = { 8955f8 8955e8 8955ec c745f0ffffffff 84c0 7410 8d642400 }
		$sequence_2 = { 84c0 7543 8b45fc 85c0 745a 68???????? }
		$sequence_3 = { 39580c 0f828d000000 0fb71437 8b4e1a 33c0 89442414 89442418 }
		$sequence_4 = { 8945f0 894df8 b801000000 837dec00 745d 85c0 7559 }
		$sequence_5 = { 8b1481 40 89560c 8906 8b5e0c 895e14 8a03 }
		$sequence_6 = { 47 897e14 897e70 c686c800000043 c6864b01000043 c74668d0f24100 6a0d }
		$sequence_7 = { 894de8 8945e4 c745ec00c94100 c745f001010000 c745f41e010000 c745f80f000000 }
		$sequence_8 = { 8bc6 c1f805 8d1485809d4300 8b0a }
		$sequence_9 = { e8???????? 0fb71d???????? 8945fc 0fb705???????? 56 68???????? e8???????? }

	condition:
		7 of them and filesize <507904
}