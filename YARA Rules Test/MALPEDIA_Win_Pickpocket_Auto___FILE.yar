rule MALPEDIA_Win_Pickpocket_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "9a488247-9e86-5930-98a0-6918c231e819"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pickpocket"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.pickpocket_auto.yar#L1-L111"
		license_url = "N/A"
		logic_hash = "d7990d44202646b62032b82a90fb7e07e373731a34449c62076ef24e8ce04d57"
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
		$sequence_0 = { 85c0 750f b962890100 e8???????? }
		$sequence_1 = { 7e1e b9dccc0000 e9???????? b9cecc0000 e9???????? b9c7cc0000 }
		$sequence_2 = { 7404 8b01 eb03 83c8ff 83f804 }
		$sequence_3 = { d3e0 a846 750f b99be00100 e8???????? e9???????? }
		$sequence_4 = { e8???????? 85c0 750e b958de0100 }
		$sequence_5 = { 85c0 750e b958de0100 e8???????? 8bc8 }
		$sequence_6 = { 85c0 740f b989000100 e8???????? }
		$sequence_7 = { 7e16 b91bcc0000 eb05 b916cc0000 }
		$sequence_8 = { eb0c b96ccb0000 eb05 b960cb0000 }
		$sequence_9 = { eb09 8bc7 eb0a b9a9d60000 e8???????? }

	condition:
		7 of them and filesize <1458176
}