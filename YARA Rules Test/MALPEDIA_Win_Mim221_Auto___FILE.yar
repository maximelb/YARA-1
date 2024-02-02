rule MALPEDIA_Win_Mim221_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "e2e82536-e29b-53d1-8c95-30ff68363ca9"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mim221"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.mim221_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "bd7d2b077259a6edc03c8b758f8bad3f5a42643cb60c61d80165934010c8f5e6"
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
		$sequence_0 = { 90 4883bc244001000008 720d 488b8c2428010000 e8???????? 4881c420020000 415e }
		$sequence_1 = { c68424b400000061 4488a424b5000000 c68424b600000064 c68424b70000006c 4488ac24b8000000 c68424b900000046 c68424ba00000072 }
		$sequence_2 = { 488b8c2400010000 e8???????? e9???????? 4889442420 4d8bcc 4c8b8424f8010000 488bd6 }
		$sequence_3 = { 57 488bc4 4883ec58 48c7442420feffffff 498bd8 488bf9 }
		$sequence_4 = { 668944243a 668944243c 668944243e 6689442440 488d542420 488bcf 66c74424420000 }
		$sequence_5 = { 3d5a290000 7307 b801000000 eb0a 3d39380000 1bc0 83c003 }
		$sequence_6 = { 66c7803effffff4c00 66b85300 6689842418010000 66c784241a0100004100 6644899c241c010000 66c784241e0100004900 66c78424200100007300 }
		$sequence_7 = { 4157 4881ec88000000 33ff 498be8 488bf1 4c8bfa }
		$sequence_8 = { 3d401f0000 7309 8d7b20 448d6b18 eb1b 3db8240000 730b }
		$sequence_9 = { 488d8c24ca000000 e8???????? c684249003000044 c68424910300008b c684249203000001 c684249303000044 c684249403000039 }

	condition:
		7 of them and filesize <471040
}