rule MALPEDIA_Win_Unidentified_001_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "7c85316d-7785-5af3-87a9-b2590753f62d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_001"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.unidentified_001_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "4757a1bf889ab5e180c54dba6f09c40c0355df630267d0efd95e630d6757bdc3"
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
		$sequence_0 = { 6830750000 ffd6 8b4df8 85c9 7483 8d45fc }
		$sequence_1 = { fec1 88143e 3a4801 72e6 5f 5e 5d }
		$sequence_2 = { 2bc6 0f8421fdffff 2df2020000 0f8478fbffff 2d13030000 }
		$sequence_3 = { b952555300 3bc1 7767 74d3 }
		$sequence_4 = { 8bf1 8b06 57 56 ff5048 8bf8 85ff }
		$sequence_5 = { ff15???????? 50 ff15???????? 8bf0 8975f8 3bf3 }
		$sequence_6 = { 893d???????? e9???????? c705????????10000000 e9???????? 2d46494e00 7461 48 }
		$sequence_7 = { 6a04 68???????? 6a07 6800080000 }
		$sequence_8 = { 8935???????? 8d45cc 50 57 }
		$sequence_9 = { 50 ff5108 8b45e4 3bc3 5b 7406 }

	condition:
		7 of them and filesize <65536
}