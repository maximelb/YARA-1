rule MALPEDIA_Win_Jssloader_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "e1eaf0bc-7617-5378-87a8-cba9c6423b69"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jssloader"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.jssloader_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "186e7df3cf3822e82929f92759ecc1d78a3a2d538dfeac54de7cfb7d33d930ef"
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
		$sequence_0 = { 89b5e0fbffff 660fd685e4fbffff 89b5ecfbffff 89b5e4fbffff 89b5e8fbffff 89b5ecfbffff }
		$sequence_1 = { 0f4345b4 50 ff15???????? 8bf0 89b5c0fdffff 83feff 0f84b9020000 }
		$sequence_2 = { 8945fc 56 8b7508 8d85fcfeffff 6800010000 6a00 50 }
		$sequence_3 = { 899d0cffffff 6a04 68???????? c745d000000000 c745d40f000000 c645c000 e8???????? }
		$sequence_4 = { 2bc6 83c0fc 83f81f 0f8797010000 e9???????? 8b854cfeffff 8d4804 }
		$sequence_5 = { 51 ffb570feffff 8d4dcc e8???????? c645fc0b 8b55e0 8bc2 }
		$sequence_6 = { 3b85ecfbffff 740a 8808 ff85e8fbffff }
		$sequence_7 = { 8bc1 83e13f c1f806 6bc938 8b0485701d4400 80640828fe ff33 }
		$sequence_8 = { 03f0 56 e8???????? 8b8534ffffff 83c40c 8b8d54feffff }
		$sequence_9 = { 03f0 56 e8???????? 8b854cffffff 83c40c c6043000 8bb568feffff }

	condition:
		7 of them and filesize <581632
}