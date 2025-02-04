rule MALPEDIA_Win_Furtim_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ff92451b-6d4d-5ce0-b407-7dcb5e6ae2c6"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.furtim"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.furtim_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "01fa4c0038a5d8991914e1859c3786c2de4cd564716dd7c7ecdf607d66ee4df9"
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
		$sequence_0 = { 5f 5e c9 c20400 6a0c 68???????? e8???????? }
		$sequence_1 = { 85c0 7c28 8d45fc 50 6a04 ff15???????? }
		$sequence_2 = { c7867802000020d94000 c78600050000cb224000 c786f406000032164000 c746601c724400 c7869c06000032254000 c786fc020000ca254000 }
		$sequence_3 = { 59 85c0 7408 8bce ff96cc050000 5f }
		$sequence_4 = { 57 8bf1 8dbeb8000000 57 c7071c010000 ff96bc030000 }
		$sequence_5 = { c9 c20800 8bff 55 8bec 83ec10 ff7508 }
		$sequence_6 = { 0f85e3000000 39a9c0000000 7542 0fb781cc010000 663bc5 7405 663bc3 }
		$sequence_7 = { 740f 837dfc01 7509 c686c405000001 eb0e 8bce ff96f8040000 }
		$sequence_8 = { c745e4e4624400 c745e8ec624400 c745ecf4624400 c745f0fc624400 c745f404634400 c745f8???????? }
		$sequence_9 = { 389f94010000 7546 80bf9501000015 7535 80bf960100005d 752c 8bce }

	condition:
		7 of them and filesize <622592
}