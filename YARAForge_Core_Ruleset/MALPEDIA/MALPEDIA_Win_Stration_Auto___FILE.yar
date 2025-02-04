rule MALPEDIA_Win_Stration_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b1ff0234-14a0-5584-b678-4973125b246b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.stration"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.stration_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "1e976189a59a2a64efd8d3bfcb5fabcc1cb05f5b8a248de2fec831e10609d819"
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
		$sequence_0 = { 6a00 6a01 baf1000000 8bcb e8???????? 55 6a01 }
		$sequence_1 = { 56 e8???????? 83c408 6a00 6a01 baf1000000 8bcd }
		$sequence_2 = { e8???????? 680b040000 56 8944241c }
		$sequence_3 = { c1fa05 891424 8bd1 52 e8???????? a3???????? 8b4c241c }
		$sequence_4 = { ba11010000 8bce e8???????? c705????????00000000 }
		$sequence_5 = { 8b15???????? 89442404 a1???????? 894c2408 8a0d???????? 89442410 8954240c }
		$sequence_6 = { 33f6 85ff 893d???????? 7517 a1???????? 85c0 c605????????00 }
		$sequence_7 = { 8a540404 c1e910 32d1 88540404 }
		$sequence_8 = { 83f80d 7cec 8b15???????? a1???????? 8b0d???????? 891424 668b15???????? }
		$sequence_9 = { eb05 bd14000000 660935???????? 8d542434 52 8d8424b4000000 }

	condition:
		7 of them and filesize <49152
}