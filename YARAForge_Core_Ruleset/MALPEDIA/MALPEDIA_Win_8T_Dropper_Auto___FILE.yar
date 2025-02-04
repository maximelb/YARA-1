rule MALPEDIA_Win_8T_Dropper_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "62f20b6c-23f8-52e5-8f38-7d977c3fc023"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.8t_dropper"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.8t_dropper_auto.yar#L1-L115"
		license_url = "N/A"
		logic_hash = "f24ad3d6bfd5a20c8c809ac43affb0600d938cb9b1cb9cd8c47771e603e82a25"
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
		$sequence_0 = { 741b 56 6800700000 6a01 68???????? }
		$sequence_1 = { ff74240c e8???????? 83c40c c3 8b442408 83f801 }
		$sequence_2 = { c6440c0e6e 8d4c2408 51 683f000f00 50 }
		$sequence_3 = { 68???????? 50 ff15???????? 85c0 7559 8b4c2408 51 }
		$sequence_4 = { 50 ff15???????? 85c0 7559 8b4c2408 }
		$sequence_5 = { 49 c6440c0c52 c6440c0d75 c6440c0e6e }
		$sequence_6 = { 68???????? 6a02 50 8b442418 }
		$sequence_7 = { 7559 8b4c2408 51 ff15???????? }
		$sequence_8 = { 6800700000 6a01 68???????? e8???????? 56 e8???????? }
		$sequence_9 = { ff15???????? 8d942410010000 6804010000 52 68???????? }

	condition:
		7 of them and filesize <147456
}