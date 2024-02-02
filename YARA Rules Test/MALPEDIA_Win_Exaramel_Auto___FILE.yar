rule MALPEDIA_Win_Exaramel_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "55f2eda2-5892-5031-b695-0db68fb2d622"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.exaramel"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.exaramel_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "746a3a522250db31852461e3a3a31996745122c83c94633343076460de517b9c"
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
		$sequence_0 = { 8bf0 85f6 7425 8d4e02 51 e8???????? 8b4d0c }
		$sequence_1 = { 83c408 85c0 7834 ff750c ff7508 ff75fc }
		$sequence_2 = { 3934bd60dd4100 7531 e8???????? 8904bd60dd4100 }
		$sequence_3 = { 8be5 5d c3 81f903000080 7519 ff35???????? b8???????? }
		$sequence_4 = { 7439 6aff 50 ff15???????? 85c0 7538 56 }
		$sequence_5 = { 50 e8???????? ffb5f0fdffff e8???????? 83c414 8b4dfc }
		$sequence_6 = { ffb5a4faffff ff15???????? 85c0 0f85c1feffff 33f6 }
		$sequence_7 = { 5d c3 f68594f7ffff10 746d }
		$sequence_8 = { 744b 817df4e8030000 b801000000 68f0030000 0f42f0 }
		$sequence_9 = { c3 8b03 8d4dec 51 6800040000 }

	condition:
		7 of them and filesize <294912
}