rule MALPEDIA_Win_Radamant_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1ede87f9-320c-576f-9524-930f09ad6207"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.radamant"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.radamant_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "add6ca5b01c9d6d8dad27d0b268d58bbdb18019e152c79d40b24c8426bcce310"
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
		$sequence_0 = { 8802 8b5510 42 8b45f8 }
		$sequence_1 = { 890424 e8???????? 8b85c8f6ffff 890424 e8???????? 8b85d4f6ffff 890424 }
		$sequence_2 = { 8d45f0 ff00 eb9b c9 }
		$sequence_3 = { 01d0 8d148500000000 01d0 29c1 89c8 83c061 8945b0 }
		$sequence_4 = { 331485b0164100 89d0 8945e8 8b55fc 83c204 8b45f4 c1e818 }
		$sequence_5 = { 8d148500000000 01d0 29c1 89c8 83c061 8945b0 }
		$sequence_6 = { c1e818 0fb6c0 0fb680b0094100 31d0 8901 8b4df4 83c124 }
		$sequence_7 = { 8b8520feffff 890424 e8???????? 83ec0c 83f8ff 752a 8b45c4 }
		$sequence_8 = { e8???????? 8b45f4 890424 e8???????? 83c424 5b 5d }
		$sequence_9 = { 8d45e8 c1000a 8b55f4 8d45e8 0110 8b45f0 f7d0 }

	condition:
		7 of them and filesize <204800
}