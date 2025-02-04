rule MALPEDIA_Win_Spyeye_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4b228779-0f96-5a8e-b676-8a6d855d1452"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.spyeye"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.spyeye_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "54f45a6b713b51a15663c9347e916cec35361fbd1f12608b97d32ef9d0a49fb7"
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
		$sequence_0 = { 8d4de8 51 8d4de0 51 50 e8???????? 85c0 }
		$sequence_1 = { 6a07 6800000040 57 e8???????? 8bf8 83ffff }
		$sequence_2 = { 6889000000 ff7508 33db 897df8 }
		$sequence_3 = { 57 6800000002 6a03 57 6a01 56 }
		$sequence_4 = { 56 6880000000 6a02 eb08 56 6880000000 6a04 }
		$sequence_5 = { 85c0 7407 c745f801000000 397dfc 740e }
		$sequence_6 = { be80000000 56 6a03 57 6a01 6889000000 ff7508 }
		$sequence_7 = { 53 e8???????? 85c0 7407 c745f801000000 397dfc 740e }
		$sequence_8 = { 8965fc ff7510 ff750c ff7508 ffd0 8b65fc }
		$sequence_9 = { 7454 57 56 6a03 }

	condition:
		7 of them and filesize <741376
}