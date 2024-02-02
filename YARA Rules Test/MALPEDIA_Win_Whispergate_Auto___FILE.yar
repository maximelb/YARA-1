rule MALPEDIA_Win_Whispergate_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6714083d-3e17-55d3-a1f8-8bf9ddb1ef17"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.whispergate"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.whispergate_auto.yar#L1-L119"
		license_url = "N/A"
		logic_hash = "32397ef108fba7d133f035121fc33f6fa3fbeba74a5870442ebf4d00a19bf608"
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
		$sequence_0 = { 89d0 80f92f 0f846b060000 80f95c 0f8462060000 8d50ff }
		$sequence_1 = { 0f8409010000 83fb2f 0f8400010000 83fb5c }
		$sequence_2 = { f6044840 0f8448ffffff 397dcc 7275 8b45d0 85c0 756e }
		$sequence_3 = { 53 31c0 0fa2 85c0 0f84db000000 }
		$sequence_4 = { 85ed 75d3 8b542420 8b742424 }
		$sequence_5 = { 55 57 56 53 81ec2c010000 8b842440010000 85c0 }
		$sequence_6 = { 75e8 890424 e8???????? 89c7 8b44241c }
		$sequence_7 = { 56 53 83ec10 8b742420 813e???????? 740e }
		$sequence_8 = { e9???????? 837dd427 0f84e4000000 83c001 }
		$sequence_9 = { 83c001 85c9 751e 83fa2a 7444 83fa3f 743f }

	condition:
		7 of them and filesize <114688
}