rule MALPEDIA_Win_Lock_Pos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "d847ae83-76cd-5967-803e-bdb0585a6606"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lock_pos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.lock_pos_auto.yar#L1-L140"
		license_url = "N/A"
		logic_hash = "36f811da9c497d4d7cb3a11de01255e73f7c0aa2aa971faa2dbafeeb60cefda6"
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
		$sequence_0 = { 8bec 8b4508 8b0d???????? 8b0481 }
		$sequence_1 = { 55 8bec 837d0800 7704 }
		$sequence_2 = { 55 8bec 81eca4040000 56 }
		$sequence_3 = { 8d85f8fdffff 50 6a00 6a00 6a23 6a00 ff15???????? }
		$sequence_4 = { 0fb64dfb 85c9 741c 8b5514 8b45fc }
		$sequence_5 = { 2bc8 c745fc04000000 8a1401 8810 40 }
		$sequence_6 = { 8b55f8 8b4508 8910 8b45c4 }
		$sequence_7 = { 3bc6 0f85a1000000 32db e8???????? 84db }
		$sequence_8 = { 8b55fc 8b450c 0fb70c50 334d14 }
		$sequence_9 = { 33c9 84c0 0f95c1 41 51 ff75e4 }
		$sequence_10 = { 894dfc 8b55dc 83c201 8955dc ebd2 8b45f8 }
		$sequence_11 = { e8???????? 83c408 8d9568ffffff 52 e8???????? 83c404 50 }
		$sequence_12 = { 50 eb4b 8b45f8 3bc3 764e 03c7 }

	condition:
		7 of them and filesize <319488
}