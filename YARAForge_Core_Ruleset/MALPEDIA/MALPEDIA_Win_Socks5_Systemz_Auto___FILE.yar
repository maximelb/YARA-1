rule MALPEDIA_Win_Socks5_Systemz_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "11fdca9d-b672-58c8-b928-df2c27b8d2c6"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.socks5_systemz"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.socks5_systemz_auto.yar#L1-L97"
		license_url = "N/A"
		logic_hash = "c567898c7f496303ddbf924e08954da7846c60ee6266bcbd0213f34733b6e6b6"
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
		$sequence_0 = { 50 64892500000000 83ec14 894df0 8b45f0 83c018 }
		$sequence_1 = { 8b45c8 c6041000 b901000000 6bd100 8b8500feffff }
		$sequence_2 = { 8b45d4 8945e0 8b4ddc 51 }
		$sequence_3 = { 8b45d8 8945f0 837df000 7413 }
		$sequence_4 = { 8b45cc c6041000 b901000000 6bd100 8b45c8 c6041000 }
		$sequence_5 = { 8b45cc 50 e8???????? 59 c3 8d4dd8 }
		$sequence_6 = { 8b45d0 e9???????? e9???????? 837dcc00 }
		$sequence_7 = { 8b45d8 50 8b4df0 83c124 }

	condition:
		7 of them and filesize <491520
}