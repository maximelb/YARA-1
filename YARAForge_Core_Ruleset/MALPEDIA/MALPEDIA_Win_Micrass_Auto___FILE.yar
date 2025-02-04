rule MALPEDIA_Win_Micrass_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4db1798a-2c39-50c7-84da-46ea64acd353"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.micrass"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.micrass_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "9dffdea8c321d05076908df0f614e54842a8e7b97f4db09cebeac9dcb66ebdaa"
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
		$sequence_0 = { 59 89442424 8d442408 6a50 }
		$sequence_1 = { 66890c45c4cc4000 40 ebe8 33c0 8945e4 3d01010000 7d0d }
		$sequence_2 = { 8dbdccfdffff a5 a5 a5 a5 }
		$sequence_3 = { 6a06 89430c 8d4310 8d8984194000 5a 668b31 }
		$sequence_4 = { 8d85f8afffff 6a00 50 e8???????? 68???????? 57 e8???????? }
		$sequence_5 = { 53 8985b83fffff 8d85c03fffff 57 50 89bddc9fffff }
		$sequence_6 = { 56 b9???????? 8bf2 2bc8 2bf0 8a1401 }
		$sequence_7 = { 8985e4fbffff 6a05 59 be???????? }
		$sequence_8 = { 50 c744244801010000 e8???????? 59 50 89442414 }
		$sequence_9 = { 8bcb e8???????? 59 837e4400 57 bf???????? }

	condition:
		7 of them and filesize <163840
}