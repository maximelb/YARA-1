rule MALPEDIA_Win_Contopee_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "77374f1e-6c89-5026-9b9e-741c43271a9e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.contopee"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.contopee_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "887c3d1e6d8d0ed992ba95d9f863595a093876d8864d3c96b3a6d6d4a8e08fbb"
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
		$sequence_0 = { c3 8bac244c020000 55 6a00 }
		$sequence_1 = { 83c41c eb35 8b5614 8b442430 6a00 6aff 42 }
		$sequence_2 = { 6880000000 50 8d8e6a050000 6880000000 51 }
		$sequence_3 = { 66896c240c 8d842414020000 50 57 ff15???????? }
		$sequence_4 = { 7510 ff15???????? 5f 5d 5b 81c4dc040000 c3 }
		$sequence_5 = { 8bf8 ebc8 ff15???????? 8bf8 ebd1 5f }
		$sequence_6 = { 7432 6a0f 51 50 e8???????? 8bf0 }
		$sequence_7 = { 8bd8 8b4608 83f802 8b44242c 0f858e000000 eb04 8b7c2418 }
		$sequence_8 = { 68???????? 51 ff15???????? 8b84243c020000 8d542428 52 50 }
		$sequence_9 = { 52 e8???????? 83c430 5f 5e }

	condition:
		7 of them and filesize <180224
}