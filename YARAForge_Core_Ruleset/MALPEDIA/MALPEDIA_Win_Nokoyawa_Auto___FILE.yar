rule MALPEDIA_Win_Nokoyawa_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "71f47de5-b877-5435-a43f-09577ab6e252"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nokoyawa"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.nokoyawa_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "a3e5835d9868e848c4cf7b1e58144cc15b3f0d5c2b0274b447bdec70231f3ad8"
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
		$sequence_0 = { 33c8 8bc1 8b4c2420 488b9424c0000000 88040a e9???????? 33c0 }
		$sequence_1 = { 488b4c2460 e8???????? 488b442468 4883e0c0 }
		$sequence_2 = { 890424 8b0424 83c003 99 83e203 03c2 c1f802 }
		$sequence_3 = { 488b4c2448 488b0c01 e8???????? 85c0 7511 c605????????01 e8???????? }
		$sequence_4 = { 89442434 e8???????? 488905???????? 8b442434 }
		$sequence_5 = { 48894c2408 4883ec18 48c7042400000000 488b442420 488b0c24 0fb70448 }
		$sequence_6 = { 8b442420 83c014 89442420 837c242040 }
		$sequence_7 = { 880424 488b442410 48c1e005 4803442410 0fb60c24 4803c1 4889442410 }
		$sequence_8 = { 486bc907 8b4c0c20 8b440420 33c1 b904000000 }
		$sequence_9 = { 8b9424a0000000 03d1 8bca 8d8408a1ebd96e 8b4c2414 03c8 }

	condition:
		7 of them and filesize <92160
}