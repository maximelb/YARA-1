rule MALPEDIA_Win_Satan_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ddfd46bc-87c6-53ce-9595-be9a6a99e4e0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.satan"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.satan_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "6170986a4237acbed4cbbf775dbbfb72e2b63776fab2b68ba052c6ad44853238"
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
		$sequence_0 = { e8???????? 8be5 5d c20800 8b45e4 c745b800000000 c745bc00000000 }
		$sequence_1 = { 52 ff15???????? 8b4508 8b0c85e8c24700 83e102 740d 8d95e4dfffff }
		$sequence_2 = { ffb5c4e7ffff 8985a0e7ffff ffb5bce7ffff c745ec04000000 }
		$sequence_3 = { 57 50 8d45f4 64a300000000 8d4dd0 e8???????? }
		$sequence_4 = { e8???????? 8b85acfeffff 83f810 7212 40 6a01 }
		$sequence_5 = { eb9b 8b4dfc c1f906 8b55fc 83e23f 6bc230 03048d40e04700 }
		$sequence_6 = { e8???????? 8845dc c745fc01000000 84c0 0f84b3010000 8d45d0 50 }
		$sequence_7 = { 8d0c8584d64700 51 e8???????? 83c408 }
		$sequence_8 = { 64a300000000 68b8000000 8d8598fdffff 6a00 50 e8???????? 68???????? }
		$sequence_9 = { 8b5508 83e23f 6bd230 8b0c8d40e04700 8844112d 8b45ec d1e0 }

	condition:
		7 of them and filesize <1163264
}