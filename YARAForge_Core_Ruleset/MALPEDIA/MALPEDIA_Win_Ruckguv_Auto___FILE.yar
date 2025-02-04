rule MALPEDIA_Win_Ruckguv_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "70c59136-1542-5cb3-8c7d-52dba7e0bc40"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ruckguv"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ruckguv_auto.yar#L1-L118"
		license_url = "N/A"
		logic_hash = "a64635c0a8f169255c2ded62c13acd231a3b9a4460e9b10acd2e149c6348dd85"
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
		$sequence_0 = { 7403 51 eb04 0fb7c0 50 ff7508 }
		$sequence_1 = { 56 53 e8???????? 8b463c 68f8000000 }
		$sequence_2 = { ff75fc 8d85b0f7ffff 50 ff75f4 }
		$sequence_3 = { 59 894508 85c0 750f 8b470c }
		$sequence_4 = { 85c0 0f848b000000 57 8d3c18 8b470c 85c0 }
		$sequence_5 = { 8a0a 84c9 75f1 c3 682680acc8 }
		$sequence_6 = { 83c0c0 50 8d4640 50 8d4340 }
		$sequence_7 = { 68dff0f081 6a01 e8???????? 83c40c 8d8d9cfdffff 51 ffd0 }
		$sequence_8 = { 6880000000 6a03 56 56 53 }
		$sequence_9 = { 59 59 ff742404 ffd0 c3 6831f478b7 }

	condition:
		7 of them and filesize <41024
}