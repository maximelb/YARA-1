rule MALPEDIA_Win_Hdmr_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "efac4b5a-015c-5408-9681-2898b333d92b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hdmr"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.hdmr_auto.yar#L1-L114"
		license_url = "N/A"
		logic_hash = "d93eae97d145bb46a0ed753e26aa98381b2be0cfcaaaf5d8753f4519f5f83cf1"
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
		$sequence_0 = { 8945e0 85c0 7461 8d0cbd40d04100 8901 8305????????20 8b11 }
		$sequence_1 = { 8945ec 894df0 894dfc 8b16 8b523c 50 }
		$sequence_2 = { c1e810 4a 75e6 eb07 }
		$sequence_3 = { 56 8b7508 68fe070000 8d85fef7ffff 6a00 }
		$sequence_4 = { 85db 0f8492010000 8b8d70ffffff 0fb709 }
		$sequence_5 = { 250000ff00 81e3000000ff 33c3 8bda 81e2ff000000 }
		$sequence_6 = { 0fb701 0fb71c0f 2bc3 2bc2 }
		$sequence_7 = { 75ea 8a03 3c61 0fbec0 }
		$sequence_8 = { 8b400c 51 52 8bce ffd0 5e 5b }
		$sequence_9 = { 50 ff15???????? 8d8c24780a0000 51 }

	condition:
		7 of them and filesize <284672
}