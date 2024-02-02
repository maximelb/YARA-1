rule MALPEDIA_Win_Magala_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "57b76c6b-52c3-5f25-9fd2-257d2fe2adf4"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.magala"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.magala_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "bd9ee6cce82c810cf18ac629b3f76ce4da7e66a1f258b71b1396e2e5be340ce0"
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
		$sequence_0 = { 8b4004 838c054cffffff04 8b8538ffffff 8b4004 c6840578ffffff30 2b17 744e }
		$sequence_1 = { 8b7dd0 3bdf 0f849d000000 33c0 c745e800000000 6aff 50 }
		$sequence_2 = { 8bcf e8???????? 56 8bd0 c645fc0c 8d4da8 e8???????? }
		$sequence_3 = { 8a55d8 c645fc00 83f810 7242 }
		$sequence_4 = { e8???????? 8b4df8 83c40c 837e1410 894e10 7211 }
		$sequence_5 = { 6685c0 75f4 a1???????? 8b550c }
		$sequence_6 = { 6a01 50 8b08 ff513c 85c0 75b8 50 }
		$sequence_7 = { 8995e0fdffff 8955fc 8b1d???????? 0f1f8000000000 }
		$sequence_8 = { c745e800000000 c745ec0f000000 c645d800 e8???????? c745fc00000000 8d4e04 }
		$sequence_9 = { e8???????? 8b4df8 b853d9de75 8b75f4 33db 2bce f7e9 }

	condition:
		7 of them and filesize <589824
}