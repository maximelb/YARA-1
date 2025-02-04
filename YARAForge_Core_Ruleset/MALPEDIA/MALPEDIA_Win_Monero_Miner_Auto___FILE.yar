rule MALPEDIA_Win_Monero_Miner_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "e4c7050e-9186-5f1e-9d47-976e6a4001a0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.monero_miner"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.monero_miner_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "7e4796fa5a31551e9b057737783d58401a472a7bae7889a290c988c1aea0c1dd"
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
		$sequence_0 = { 0fb65508 034d04 035d00 01d0 e9???????? 0fb77508 034d04 }
		$sequence_1 = { 8b842490000000 895f40 338424ac000000 8b9c2444010000 31cd 8b8c2440010000 31de }
		$sequence_2 = { 8b442460 31f5 8bb42488000000 03742460 896c2438 89c5 897c243c }
		$sequence_3 = { 8b4c2424 c7042400000000 89442404 8b442420 e8???????? 85c0 89c3 }
		$sequence_4 = { 8b54245c 09ce 89b424f0010000 897738 89ac24f4010000 896f3c 0fa4c204 }
		$sequence_5 = { 8d4c2427 89742414 895c240c 897c2408 c744240400000000 83e1f0 8b7de0 }
		$sequence_6 = { 89bc24c0010000 89ac24c4010000 8bac24c8040000 036c2420 8b742460 8bbc24cc040000 137c2424 }
		$sequence_7 = { c744240423000000 8b85c0040000 890424 e8???????? 85c0 7403 c60000 }
		$sequence_8 = { e8???????? 8d4b50 8d5705 c7435c00000000 c7435800000000 c7435400000000 895350 }
		$sequence_9 = { 8b8424b0010000 899424c4010000 8b9424b4010000 89ac24c0010000 01c1 89c5 11d3 }

	condition:
		7 of them and filesize <1425408
}