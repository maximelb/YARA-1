rule MALPEDIA_Win_Stabuniq_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "fc58cf81-e26c-5be2-91a6-3fbb3fc72d52"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.stabuniq"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.stabuniq_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "97aa7344abd98ffc46d944f3c78f102b277bbba8d700aca31756ce2df1f26cfc"
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
		$sequence_0 = { 50 8b4d08 ff91a8000000 6a00 6a00 }
		$sequence_1 = { 8b8df4feffff 51 6aff 8b5508 81c2a2050000 }
		$sequence_2 = { 52 8b4510 ff503c 8b4d10 33d2 668b9106020000 }
		$sequence_3 = { 6a00 8b4d08 8b91f8010000 52 8b4508 ff9018010000 837de4ff }
		$sequence_4 = { 8985c8fbffff 8b4d14 51 6a08 8b550c }
		$sequence_5 = { 8b4df8 8b11 035508 8955f4 eb0c 8b45f8 8b4810 }
		$sequence_6 = { 51 e8???????? 8b5508 83c220 895508 c785bcfcffff00000000 8b4510 }
		$sequence_7 = { 51 8b550c ff524c 8945fc 8b45fc 50 }
		$sequence_8 = { 8d85c0fcffff 50 8b4d0c 51 e8???????? eb16 8b5510 }
		$sequence_9 = { 81c155030000 51 e8???????? 6a00 8b5514 52 8b85e8feffff }

	condition:
		7 of them and filesize <57344
}