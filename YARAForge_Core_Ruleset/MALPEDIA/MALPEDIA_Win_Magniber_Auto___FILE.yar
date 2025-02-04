rule MALPEDIA_Win_Magniber_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "05f5671a-f33b-5211-a81c-43695f05ea5d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.magniber"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.magniber_auto.yar#L1-L164"
		license_url = "N/A"
		logic_hash = "a03ae86175c535bb9d3d882302b08d3c7bb8579783b2000a5224d25eaa155af3"
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
		$sequence_0 = { 50 e8???????? 83c408 837dfc00 7502 eb31 6a00 }
		$sequence_1 = { 8b45e8 50 ff15???????? 8b4df4 51 }
		$sequence_2 = { c785a0fafffff0934000 c785a4fafffff8934000 c785a8faffff00944000 c785acfaffff08944000 }
		$sequence_3 = { 50 8b4df4 51 ff15???????? 8b45f8 99 }
		$sequence_4 = { 83c408 8b4dfc 8b55f8 6689044a }
		$sequence_5 = { c7852cfbffff14954000 c78530fbffff1c954000 c78534fbffff24954000 c78538fbffff2c954000 c7853cfbffff34954000 c78540fbffff40954000 }
		$sequence_6 = { 66894da4 ba2f000000 668955a6 b853000000 668945a8 b943000000 }
		$sequence_7 = { 0f842e010000 660f57c0 660f1345b0 6a00 8d4df8 51 6a10 }
		$sequence_8 = { f76e9f 32d8 2d7a350e78 95 }
		$sequence_9 = { 4834b0 184026 e221 a1????????05eef081 e0f8 29aed0515fa6 8d4f0e }
		$sequence_10 = { 56 18cb 52 fc 285f44 c1c70d 11fb }
		$sequence_11 = { e8???????? 32cb 5a b3b1 }
		$sequence_12 = { 4e4e54 70ac 52 f8 a6 6e }
		$sequence_13 = { 29aed0515fa6 8d4f0e 7f4c c82cd1c6 1a32 b636 }
		$sequence_14 = { 5a b3b1 3e6c 21746c2e 4834b0 184026 }

	condition:
		7 of them and filesize <117760
}