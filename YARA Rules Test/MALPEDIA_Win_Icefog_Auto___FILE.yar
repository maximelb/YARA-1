rule MALPEDIA_Win_Icefog_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "048267f9-e0c5-52eb-96a2-fb16cbcf8de1"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.icefog"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.icefog_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "1d4c21c23eefcc954f2b32ae717065ebcfe80845052716e0c9e4c85776b4e83c"
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
		$sequence_0 = { 80e3fb 899588feffff 33d2 80c327 85ff 0f94c2 85d2 }
		$sequence_1 = { c78530ffffff05000000 eb0f 83f803 750a c78530ffffff02000000 8b4604 50 }
		$sequence_2 = { 751e 8b4d0c 8d450c 50 57 51 e8???????? }
		$sequence_3 = { 8bec 53 56 33f6 39770c 7e24 33db }
		$sequence_4 = { 8b5108 8b45f4 03d3 52 53 50 6a03 }
		$sequence_5 = { 50 e8???????? 8b0e 8d55d4 68ffffff7f 52 894de8 }
		$sequence_6 = { 8b5610 0bf8 8b4508 52 50 e8???????? 8b4e18 }
		$sequence_7 = { 50 51 e8???????? 8bd8 83c408 85db 0f841b010000 }
		$sequence_8 = { e8???????? 53 e8???????? 53 57 e8???????? 83c42c }
		$sequence_9 = { dfe0 ddd9 f6c441 0f8572010000 dd05???????? d8d1 dfe0 }

	condition:
		7 of them and filesize <1187840
}