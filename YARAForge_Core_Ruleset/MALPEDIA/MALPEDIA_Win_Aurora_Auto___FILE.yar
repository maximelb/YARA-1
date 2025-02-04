rule MALPEDIA_Win_Aurora_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6739f143-45de-5c25-aa97-f9c0ab868c7e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.aurora"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.aurora_auto.yar#L1-L118"
		license_url = "N/A"
		logic_hash = "401b46f1e5d6c2d35e6c7ba88f463abdb92c79f1d47fd14fd19c66427ffd50ad"
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
		$sequence_0 = { 8b4e14 8945d4 8b4610 3bc1 7530 40 83f8fe }
		$sequence_1 = { c645fc03 8d4dd8 837dec08 8d5dd8 }
		$sequence_2 = { 8aca c0e206 0255d3 c0e902 80e10f }
		$sequence_3 = { ebd9 837b1410 7202 8b1b }
		$sequence_4 = { 3bf3 7469 897de8 c645fc01 85ff 7437 c7471000000000 }
		$sequence_5 = { 6a00 c741140f000000 c7411000000000 68???????? c60100 e8???????? 8d8df8fbffff }
		$sequence_6 = { 83793800 0f45c2 50 e8???????? 8b9df0feffff c745e40f000000 c745e000000000 }
		$sequence_7 = { c785c8f1ffff0f000000 c785c4f1ffff00000000 c685b4f1ffff00 e8???????? 8d8dccf1ffff }
		$sequence_8 = { 68???????? 8d8d24f1ffff c78538f1ffff0f000000 c78534f1ffff00000000 }
		$sequence_9 = { 6a02 68???????? 8d8d14efffff c78528efffff0f000000 }

	condition:
		7 of them and filesize <827392
}