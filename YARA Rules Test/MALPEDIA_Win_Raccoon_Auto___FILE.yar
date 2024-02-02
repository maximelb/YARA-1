rule MALPEDIA_Win_Raccoon_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4a27386e-afe9-5aa0-b437-cb8672f32902"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.raccoon"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.raccoon_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "744c135940d1e7204980afbdf51c2b964c1deff72c5358a0844976025962517f"
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
		$sequence_0 = { 8bf0 8975f0 85f6 7422 8d45ec c706???????? }
		$sequence_1 = { e8???????? 68???????? eb31 51 }
		$sequence_2 = { 8b45e8 3bc6 7c31 7f04 3bde 762b }
		$sequence_3 = { 53 50 8d45e0 895dd0 }
		$sequence_4 = { ff15???????? 8945f4 40 03c7 50 8945f0 }
		$sequence_5 = { ff15???????? 8bf0 83feff 7437 837b1410 7202 8b1b }
		$sequence_6 = { 8d45ec c706???????? 50 53 ff75e4 895dec ff15???????? }
		$sequence_7 = { 57 33db 8bf9 53 6aff 53 }
		$sequence_8 = { 6a01 52 52 52 52 }
		$sequence_9 = { 0f85dd000000 57 57 57 57 8d45fc }

	condition:
		7 of them and filesize <1212416
}