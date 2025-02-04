rule MALPEDIA_Win_Rockloader_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "175eaa7b-da5b-50b8-b46d-cecd53211dcf"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rockloader"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.rockloader_auto.yar#L1-L117"
		license_url = "N/A"
		logic_hash = "8a75e6c1f9302fef80e04ef409ea5d10afc0d829be15769e71fe72b02405b4ff"
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
		$sequence_0 = { e8???????? dc1d???????? dfe0 f6c441 740f }
		$sequence_1 = { e8???????? 85c0 74b4 c6002c 40 837d0c00 7404 }
		$sequence_2 = { 8a06 3c22 750c ff7508 8bc6 e8???????? }
		$sequence_3 = { 8b45f4 8945e8 8d45f8 50 8d45e4 }
		$sequence_4 = { eb05 68???????? e8???????? 8bf8 8bc7 }
		$sequence_5 = { e8???????? 33f6 53 8975f8 }
		$sequence_6 = { 3975f4 7e55 53 8b45f8 }
		$sequence_7 = { ff4608 8b7f08 85ff 7452 8b4508 }
		$sequence_8 = { d9ee 53 56 dd55ec d9e8 33f6 }
		$sequence_9 = { 8975f8 db45f8 8365f800 dec1 dd5ddc 9b }

	condition:
		7 of them and filesize <98304
}