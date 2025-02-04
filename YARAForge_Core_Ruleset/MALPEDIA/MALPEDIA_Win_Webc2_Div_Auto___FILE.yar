rule MALPEDIA_Win_Webc2_Div_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ec34042e-e794-5a2f-acc9-f1f4c0dd235a"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webc2_div"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.webc2_div_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "11aa7a8bbe87a55b44481499db0ce13e00127df87edb76e8d3596bc6375e5a87"
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
		$sequence_0 = { 5f e9???????? 6a3c 51 e9???????? 85c0 0f842c010000 }
		$sequence_1 = { 81c2b4000000 69d260ea0000 895604 eb73 8d4505 50 }
		$sequence_2 = { ff15???????? ff7508 8b35???????? 85c0 7512 }
		$sequence_3 = { 771a 8b442414 0540f087fc 50 ffd5 015c2410 8144241460ce5800 }
		$sequence_4 = { 894508 7509 57 ff15???????? eb54 a0???????? }
		$sequence_5 = { 894c243c ff15???????? 85c0 5f 750a }
		$sequence_6 = { f7d1 2bf9 8d95f0feffff 8bf7 8bfa 8bd1 }
		$sequence_7 = { f7d1 49 8bf1 8d7e01 }
		$sequence_8 = { 8885ecf9ffff 33c0 8dbdedf9ffff 8975f8 f3ab }
		$sequence_9 = { 8bc5 bb16000000 99 f7ff 8bc1 8d3c9510114000 99 }

	condition:
		7 of them and filesize <32768
}