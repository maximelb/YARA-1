rule MALPEDIA_Win_Ranbyus_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "9b877552-6bf5-5d12-bef1-733cc6b8feac"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ranbyus"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ranbyus_auto.yar#L1-L117"
		license_url = "N/A"
		logic_hash = "c376990edfad6c071124a105ec8d7e8afaf3007f10ae4746a7ce39d3890ccde0"
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
		$sequence_0 = { 7504 83c8ff c3 c7402401000000 }
		$sequence_1 = { 894608 8b44241c 56 68???????? 89460c }
		$sequence_2 = { 83c414 85f6 7414 6a01 6a01 57 }
		$sequence_3 = { 760a 814e2500500000 c6060f 0fb606 5e 5b }
		$sequence_4 = { a1???????? eb09 83780400 7507 8b4034 85c0 }
		$sequence_5 = { e8???????? 59 8b4e05 89410b 8b4605 39780b 7407 }
		$sequence_6 = { 8b4e05 89410b 8b4605 39780b }
		$sequence_7 = { 83c621 8a06 3c46 7240 3c47 }
		$sequence_8 = { 83780400 7507 8b4034 85c0 75f3 c3 }
		$sequence_9 = { c3 837c240800 7467 8b44240c }

	condition:
		7 of them and filesize <638976
}