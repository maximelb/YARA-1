rule MALPEDIA_Win_Darkbit_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "58b27aad-7d48-54be-9cff-6269fdf4ce6e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.darkbit"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.darkbit_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "06c0013c639973d9f2d79cd394915657a8e01f1fe7c56128c97a4b11c48d29ab"
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
		$sequence_0 = { e8???????? 48898424f0140000 48899c2498020000 488b0d???????? 48898c2478100000 488d05c1742500 90 }
		$sequence_1 = { eb23 4889c7 488b8c24d0180000 e8???????? 488d7810 488b8424c8180000 6690 }
		$sequence_2 = { e8???????? 4889842410010000 48899c2418070000 488b442460 48c7c3feffffff e8???????? 4889842470010000 }
		$sequence_3 = { eb11 488d7818 488b8c24f0110000 e8???????? 488b8c24e8030000 48894810 833d????????00 }
		$sequence_4 = { 833d????????00 7515 488b8c24a81e0000 488908 488905???????? 90 eb1c }
		$sequence_5 = { e8???????? 488b542440 48895008 833d????????00 750d 488b9424c0000000 488910 }
		$sequence_6 = { e8???????? 4889842428080000 48899c2480110000 488b8424a0080000 48c7c3ffffffff 0f1f440000 e8???????? }
		$sequence_7 = { e8???????? 488d8424d8000000 488b9c2408010000 90 e8???????? b801000000 eb21 }
		$sequence_8 = { e8???????? 803d????????00 7431 488d1543fa1a00 488915???????? 833d????????00 7509 }
		$sequence_9 = { ffd2 84c0 7556 488d0509aa3000 488b5c2430 488b4c2438 e8???????? }

	condition:
		7 of them and filesize <11612160
}