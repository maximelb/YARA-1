rule MALPEDIA_Win_Danabot_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6c78b1f9-714b-5978-8883-c700c384c0f3"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.danabot"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.danabot_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "4cb498ddb7090d3a6017b222a7d9cd57acddd4317f82294d9c05727c52600ae4"
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
		$sequence_0 = { 7405 83e804 8b00 83f814 7e18 8b45fc 50 }
		$sequence_1 = { c1e803 83e03f 83f838 730b ba38000000 }
		$sequence_2 = { 8b03 50 8b44242c 50 6a14 }
		$sequence_3 = { 8b45f8 85c0 7407 83e804 }
		$sequence_4 = { 8b16 e8???????? 8b07 50 8b442428 50 6a0a }
		$sequence_5 = { 50 6a14 688a4c2a8d 8bc6 8b4d00 8b17 }
		$sequence_6 = { 3b85d0feffff 7452 8b85d0feffff 50 6a00 }
		$sequence_7 = { 6a00 49 75f9 51 53 56 bb???????? }
		$sequence_8 = { 8b0f 8b16 e8???????? 8b07 50 8b442454 50 }
		$sequence_9 = { 56 57 8bf1 8955f8 8945fc 8d45fc }

	condition:
		7 of them and filesize <237568
}