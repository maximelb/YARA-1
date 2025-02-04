rule MALPEDIA_Win_Webc2_Cson_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "9e77cd9b-5577-55ec-9bc9-fce8ae6111d5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webc2_cson"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.webc2_cson_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "7c0e799e7902791c334e5b7573181538432e1af2060bac92fa55c2a280799f66"
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
		$sequence_0 = { e8???????? 8d85f0feffff 50 e8???????? 6a1e 8db5f6feffff 59 }
		$sequence_1 = { be???????? 8dbd74ffffff 6a0a f3a5 a4 be???????? 56 }
		$sequence_2 = { 50 e8???????? 59 59 ff7508 8d85acfcffff 50 }
		$sequence_3 = { e8???????? 59 59 68???????? ff15???????? 53 bf???????? }
		$sequence_4 = { 83c410 85ff 743f 85c0 743b 2bc7 }
		$sequence_5 = { 8bec 81ec54030000 53 56 8b35???????? 57 33db }
		$sequence_6 = { 83f803 0f859c010000 53 53 53 53 }
		$sequence_7 = { 8d7d81 885d80 f3ab 66ab aa 6a0f 33c0 }
		$sequence_8 = { 8bec 81ec3c060000 53 56 be04010000 }
		$sequence_9 = { 5e 5b c9 c20400 c605????????01 be00900100 6800040000 }

	condition:
		7 of them and filesize <98304
}