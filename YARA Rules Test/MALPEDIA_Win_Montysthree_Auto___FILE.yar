rule MALPEDIA_Win_Montysthree_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5df0d300-da50-5a49-9998-41d773ee6c8b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.montysthree"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.montysthree_auto.yar#L1-L119"
		license_url = "N/A"
		logic_hash = "00fdc41dcd00cadf758a1f9a8aa235f12bbf1e307fd238ef7d6a32ae7dd0988d"
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
		$sequence_0 = { ff15???????? 8bf0 3bf3 89754c }
		$sequence_1 = { 8bd4 46 62807013e64e 13e6 d1b660d40c3e }
		$sequence_2 = { 8d4d70 e8???????? ff30 687b020000 57 68???????? e8???????? }
		$sequence_3 = { ff75f0 ffd6 8bc7 f7d8 }
		$sequence_4 = { 50 bf00040000 57 ff15???????? 85c0 8d8574f7ffff 7405 }
		$sequence_5 = { ff7508 53 ff15???????? 53 8d83080a0000 50 }
		$sequence_6 = { 8d4d28 e8???????? 50 68???????? e8???????? }
		$sequence_7 = { 8933 39753c 8b457c 8930 753d 39756c }
		$sequence_8 = { e8???????? 8d8570fdffff 50 8d4dc4 }
		$sequence_9 = { ff756c ff15???????? 8d4524 50 8d4d4c e8???????? eb25 }

	condition:
		7 of them and filesize <458752
}