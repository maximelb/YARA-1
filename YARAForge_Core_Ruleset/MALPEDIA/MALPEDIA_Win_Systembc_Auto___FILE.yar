rule MALPEDIA_Win_Systembc_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "33299700-4e02-5584-bb63-8a8197d8417b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.systembc"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.systembc_auto.yar#L1-L115"
		license_url = "N/A"
		logic_hash = "29f113c1b3510221b57bbc147c9c5017608a490a95fbc04ce80eea2621980153"
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
		$sequence_0 = { 8b8e88010000 8b968c010000 8bb690010000 8945e4 895df4 }
		$sequence_1 = { 52 6a00 6a00 6a00 ffb568f9ffff }
		$sequence_2 = { 668b9554f9ffff 6a00 6a00 6a03 6a00 6a00 }
		$sequence_3 = { 898568f9ffff c7856cf9ffff00040000 8d853cf9ffff 50 6a00 6a00 }
		$sequence_4 = { 81c200008000 81c200100000 81c200200000 6a00 52 }
		$sequence_5 = { 8d851cf4ffff 50 6800010000 57 ffb530f4ffff }
		$sequence_6 = { 50 e8???????? ffd0 8b85f4feffff }
		$sequence_7 = { 43 3b5dfc 7296 33c0 5e 5f }
		$sequence_8 = { 668b9554f9ffff 6a00 6a00 6a03 6a00 }
		$sequence_9 = { 57 56 8b7d10 33c0 }

	condition:
		7 of them and filesize <57344
}