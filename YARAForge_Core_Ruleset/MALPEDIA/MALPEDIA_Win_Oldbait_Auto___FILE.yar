rule MALPEDIA_Win_Oldbait_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ebf9fc57-4949-58c7-824e-3ca5b4d74ce5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.oldbait"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.oldbait_auto.yar#L1-L228"
		license_url = "N/A"
		logic_hash = "d1cd1bc5ec310d79468f4c2de84867d1b6cb0114c1b0bc749b36388cf16e7127"
		score = 75
		quality = 73
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
		$sequence_0 = { 05d4db1900 8945f4 ff35???????? ff75fc ff55f4 5f 5e }
		$sequence_1 = { 8bec 8b450c 56 33d2 57 }
		$sequence_2 = { 33d2 57 8b7d08 8d70ff 85f6 7626 }
		$sequence_3 = { 01459c 8b45c8 8945f8 eb05 }
		$sequence_4 = { 69c061ea0000 3571281424 42 3bd6 894510 72da }
		$sequence_5 = { 0145d8 8bb54cffffff 56 ff55d0 }
		$sequence_6 = { 0145d8 33ff 8d837ff61800 803800 }
		$sequence_7 = { 0145d8 8b45f0 ff45ec 0fb64004 }
		$sequence_8 = { 0531b11800 50 8b45f8 0531010000 50 }
		$sequence_9 = { 0145d4 41 c1ea04 75dc }
		$sequence_10 = { 837d2000 7432 66c7045f0d00 43 66c7045f0a00 43 }
		$sequence_11 = { 0145d8 8b45d8 3b45c8 7cc2 }
		$sequence_12 = { 83e107 d3e8 30043a 8b4510 69c061ea0000 3571281424 42 }
		$sequence_13 = { 6a40 6800300000 68d4fd1900 6a00 }
		$sequence_14 = { 894510 72da 8bc7 5f 5e }
		$sequence_15 = { 0103 01451c 8b06 8bc8 c1e906 }
		$sequence_16 = { 8b55fc 8a5d0f 8d4701 83e007 02d9 }
		$sequence_17 = { 7439 8d85bcfdffff 68???????? 50 }
		$sequence_18 = { ffd6 68???????? 53 8945f0 ffd6 6a64 }
		$sequence_19 = { 50 e8???????? ff75f4 8d8578ffffff 68???????? }
		$sequence_20 = { ffd6 ffd0 8d85c0feffff 50 8d85bcfdffff }
		$sequence_21 = { 8945ec ff7508 6a01 6a00 6a00 }
		$sequence_22 = { 8d4df4 8945d4 51 57 50 }
		$sequence_23 = { 57 50 53 68???????? ff35???????? ffd6 ffd0 }

	condition:
		7 of them and filesize <172032
}