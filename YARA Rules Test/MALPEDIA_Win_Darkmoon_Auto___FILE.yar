rule MALPEDIA_Win_Darkmoon_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "c7bc3212-028b-5215-8293-c0df2749aba3"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.darkmoon"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.darkmoon_auto.yar#L1-L116"
		license_url = "N/A"
		logic_hash = "5987f0c1a065561468c6153b43a5b63a22d14e5454b4b93cd49fdb8fd5a12783"
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
		$sequence_0 = { c745e435000000 e8???????? 83c418 85c0 }
		$sequence_1 = { 7432 8d55e4 8d45e8 52 8d4dec 50 8d95e4fdffff }
		$sequence_2 = { 8dbe48010000 6800f00000 8bcf e8???????? 6800f00000 8bce }
		$sequence_3 = { 7314 ff7510 ff750c ff7508 }
		$sequence_4 = { c645fc03 e8???????? 8d4f08 c645fc04 e8???????? }
		$sequence_5 = { c645fc07 e8???????? eb02 33ff 57 c645fc01 }
		$sequence_6 = { 83ec10 33c9 8bdc 33d2 8dbe48010000 }
		$sequence_7 = { 8d860f040000 8945cc eb12 8d86130d0000 }
		$sequence_8 = { 837df020 750e 8dbdfcfdffff c60720 }
		$sequence_9 = { 50 837df400 740d 6800800000 6a00 ff75f4 ff5625 }

	condition:
		7 of them and filesize <98304
}