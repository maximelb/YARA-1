rule MALPEDIA_Win_Qaccel_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1dd927f1-4f29-5825-9031-a85900b0d7a3"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.qaccel"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.qaccel_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "fe81ee4455e2d861af0930707bfdb209646482eb98d90e9c040e2aaf3beb1c92"
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
		$sequence_0 = { 68???????? 50 64892500000000 56 57 8bf9 0f8816000000 }
		$sequence_1 = { 5f 5f 5f 5f 5f b801000000 5e }
		$sequence_2 = { 53 03c6 51 50 c7450c00000000 }
		$sequence_3 = { 83cbff 0f8819000000 0f8913000000 5f 5f 5f 5f }
		$sequence_4 = { 8b4020 6a05 50 ffd6 50 e8???????? 8b4820 }
		$sequence_5 = { 8d55e8 51 52 ff15???????? 8b45fc 8b4df8 6a00 }
		$sequence_6 = { 50 ffd6 50 e8???????? 0fbe4dff 8b5020 6801001c00 }
		$sequence_7 = { 5f 5f 5f 68???????? ff15???????? 85c0 }
		$sequence_8 = { 5f 5f 5f 5f 6a00 50 }
		$sequence_9 = { 5f 5f 5f 66a1???????? 8b3d???????? 6800010000 668903 }

	condition:
		7 of them and filesize <106496
}