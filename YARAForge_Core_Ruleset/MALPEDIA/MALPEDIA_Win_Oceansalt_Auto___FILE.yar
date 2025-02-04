rule MALPEDIA_Win_Oceansalt_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4759a01e-4dff-5857-b87f-609205da91fe"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.oceansalt"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.oceansalt_auto.yar#L1-L173"
		license_url = "N/A"
		logic_hash = "5f4a1382e32af57ddc08356072f34b4511a1cb8b2d1541817fa2debd46a6df75"
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
		$sequence_0 = { ff15???????? 6a00 6a02 83f81f }
		$sequence_1 = { 8d95fcfbffff 6800020000 52 e8???????? 83c410 8d85ecfbffff }
		$sequence_2 = { 8d85f4feffff 50 56 ffd7 6a00 }
		$sequence_3 = { 6a00 52 c685fcfbffff00 e8???????? }
		$sequence_4 = { 8b7508 33c0 50 8945f5 668945f9 8845fb 6a07 }
		$sequence_5 = { 8945fc 56 57 6a00 6a02 c785ccfdffff28010000 e8???????? }
		$sequence_6 = { 6a0d 58 5d c3 8b04cd2cf04000 }
		$sequence_7 = { 56 c645f400 ff15???????? 6a00 6a07 8d4df4 }
		$sequence_8 = { 4885c0 7419 488d1573750000 488bc8 ff15???????? }
		$sequence_9 = { b903000000 f3a6 0f8463010000 33c9 0fb6840c8c000000 }
		$sequence_10 = { 33d2 41b82a010000 6689442440 e8???????? ff15???????? 8be8 }
		$sequence_11 = { 33c0 e9???????? 48895c2408 4c63c1 488d1d1d890000 4d8bc8 }
		$sequence_12 = { 0f85d0000000 488d0d6b380000 ff15???????? 488bf0 4885c0 0f848c010000 }
		$sequence_13 = { 488bc8 c744242800000008 c744242003000000 ff15???????? 488bd8 4883f8ff }
		$sequence_14 = { f3a6 749a 488d8c24b0030000 33d2 41b868010000 e8???????? }
		$sequence_15 = { 488d3d94700000 eb0e 488b03 4885c0 7402 ffd0 4883c308 }

	condition:
		7 of them and filesize <212992
}