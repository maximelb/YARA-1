rule MALPEDIA_Win_Nimrev_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "62b602c2-9378-5d4d-8f76-ba10a1fe3c95"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nimrev"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.nimrev_auto.yar#L1-L118"
		license_url = "N/A"
		logic_hash = "276c930d9217520c07d5dbe59ac126b04c22edd3ab1aa62095745bbe5305f85e"
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
		$sequence_0 = { ffd0 90 e9???????? 90 b9d0070000 e8???????? }
		$sequence_1 = { c1e002 01d0 01c0 29c1 89c8 83c030 89c1 }
		$sequence_2 = { b801000000 eb05 b800000000 8845f7 eb01 90 }
		$sequence_3 = { b801000000 eb05 b800000000 8845f7 eb01 90 0fb645f7 }
		$sequence_4 = { eb05 b800000000 8845f7 eb01 90 }
		$sequence_5 = { 83f001 84c0 7408 90 }
		$sequence_6 = { 0fb600 3c7d 7407 b801000000 eb05 }
		$sequence_7 = { 89c1 e8???????? eb04 90 eb01 90 }
		$sequence_8 = { 3c7d 7407 b801000000 eb05 }
		$sequence_9 = { eb01 90 0fb645f6 8845f7 }

	condition:
		7 of them and filesize <1141760
}