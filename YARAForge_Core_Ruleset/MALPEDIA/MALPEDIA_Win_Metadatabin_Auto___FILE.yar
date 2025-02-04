rule MALPEDIA_Win_Metadatabin_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ddd31612-5b1e-5a32-9ee2-3a06fec41c32"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.metadatabin"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.metadatabin_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "11b64ee680ef1e61921c6aade590c08f83cd6a9ae0a068d4e02dca568fca78c2"
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
		$sequence_0 = { 89d1 89c6 8b8424d0000000 11d9 0f92c3 f7e7 89c7 }
		$sequence_1 = { 8bbde8feffff 0f44c8 01fa 39da 0f4cd3 85ff 0f45da }
		$sequence_2 = { 8b8c2488000000 13442448 897c243c 660f6e4c243c 89f7 8b74245c 83d300 }
		$sequence_3 = { 8b742414 8b542424 39de 0f841c010000 0f836e010000 0fb7447430 0512230000 }
		$sequence_4 = { 8b85f8feffff c744240800000000 895c2404 890424 ff95f4feffff c785fcfeffff01000000 8b8568feffff }
		$sequence_5 = { f7e3 8b5c2470 01c8 89842458010000 0fb6442428 11c2 89d8 }
		$sequence_6 = { 897c240c 89fa 89c7 b8ffff0700 660f6e8c2420010000 83d700 660f6e5c240c }
		$sequence_7 = { 8d34c0 89442424 01f6 01d1 8b542408 11fe 8b7c241c }
		$sequence_8 = { 89d3 89442418 89f8 039c2480010000 83d100 f7642460 01d8 }
		$sequence_9 = { 660f70d044 660fefe6 f30f6fb42460050000 660fdbe2 660fefdc 660fefa424a0000000 660f6fc1 }

	condition:
		7 of them and filesize <1263616
}