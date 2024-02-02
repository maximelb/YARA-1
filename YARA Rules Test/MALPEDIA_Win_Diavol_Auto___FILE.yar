rule MALPEDIA_Win_Diavol_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "fdab7e4d-8bbf-526f-9dd1-9c3eccb8a369"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.diavol"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.diavol_auto.yar#L1-L119"
		license_url = "N/A"
		logic_hash = "8bc41d08eecdbb842d56f4530baf282b624ea1b70952493cedafeb9a5a3b5234"
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
		$sequence_0 = { ff15???????? 8bf0 83feff 0f8474010000 }
		$sequence_1 = { 8d8df8fdffff 51 b9???????? e8???????? 83c404 84c0 }
		$sequence_2 = { 74cf 8bc7 ebce 66833800 7520 }
		$sequence_3 = { e8???????? 8b4df8 83c40c 5f 5e 33cd b001 }
		$sequence_4 = { 83fb01 7503 894df8 8b4d10 8bc3 }
		$sequence_5 = { 752c 6a02 53 ff15???????? }
		$sequence_6 = { e8???????? 83c40c 8b4dfc 5f 5e 33cd b001 }
		$sequence_7 = { 6a10 46 8d843594f7ffff 68???????? 50 e8???????? }
		$sequence_8 = { 8d45e4 50 8bc8 51 57 8bd0 }
		$sequence_9 = { 0f84ee000000 53 57 33db 8d9b00000000 }

	condition:
		7 of them and filesize <191488
}