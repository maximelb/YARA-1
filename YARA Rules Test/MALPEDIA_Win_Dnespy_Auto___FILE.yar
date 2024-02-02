rule MALPEDIA_Win_Dnespy_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "70dfc3a2-0802-5571-8c6e-dca5ba3f52dd"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dnespy"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dnespy_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "5f9d7d06b9dad4ee82945ca7222951c2d8150747511ca4dc6b623794062c6006"
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
		$sequence_0 = { 83ec18 8d4508 8bcc 50 e8???????? ba01000000 8d4dc8 }
		$sequence_1 = { f30f7e4594 8b459c 660fd645a4 8945ac 7209 8b0e 8bc1 }
		$sequence_2 = { 8bf1 8954240c 57 8b7d08 89442414 837e4c00 7471 }
		$sequence_3 = { 74e7 83f80d 74e2 40 83f87e 0f878b010000 }
		$sequence_4 = { 6a50 668945e8 ff15???????? 668945ea 8d45e8 6a10 }
		$sequence_5 = { 0f84f0000000 8bc8 e8???????? 8bd0 c745e000000000 8bca c745e40f000000 }
		$sequence_6 = { 6a00 6a00 8d85e0cfffff 50 6a00 ff15???????? ffb5a0cfffff }
		$sequence_7 = { 8a18 3a19 750a 40 41 3bc2 75f0 }
		$sequence_8 = { 744b 8d45f4 c745f000000000 50 8d45f8 c745f800000000 50 }
		$sequence_9 = { c685ebfeffff00 c685ecfeffff0f c685edfeffff0a c685eefeffff03 8a85dcfeffff c685effeffff00 0f1f440000 }

	condition:
		7 of them and filesize <794624
}