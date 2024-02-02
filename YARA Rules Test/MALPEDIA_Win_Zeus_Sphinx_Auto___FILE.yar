rule MALPEDIA_Win_Zeus_Sphinx_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4c9695e3-d96e-5f67-a0c2-424bcf596515"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.zeus_sphinx"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.zeus_sphinx_auto.yar#L1-L158"
		license_url = "N/A"
		logic_hash = "c474cca5e98993ccd970de7e5648248c620e9abab23dec872f161292bb6b1fb0"
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
		$sequence_0 = { 50 e8???????? 891c24 89c6 e8???????? 83c410 8d65f4 }
		$sequence_1 = { 50 e8???????? 83c414 68???????? e8???????? c70424???????? }
		$sequence_2 = { 50 e8???????? 83c410 c74604ffffffff 897508 }
		$sequence_3 = { 50 e8???????? 83c430 85c0 7e0c }
		$sequence_4 = { 52 52 8b6c2444 55 50 e8???????? 8944245c }
		$sequence_5 = { 50 e8???????? 84c0 745f 8d442414 }
		$sequence_6 = { 50 e8???????? 83c420 48 }
		$sequence_7 = { 50 e8???????? 83c418 68???????? 68???????? }
		$sequence_8 = { 01fc eb98 035e14 8ade }
		$sequence_9 = { 010c02 3bf7 0f85f0f50000 e9???????? }
		$sequence_10 = { 003b c09bdbe23ea11c 695600663ec700 de07 }
		$sequence_11 = { 0303 50 ff550c 8b3e }
		$sequence_12 = { 010d???????? 60 5a 98 }
		$sequence_13 = { 020a 42 1af6 af }
		$sequence_14 = { 0162c9 cf 0c06 3c3e }
		$sequence_15 = { 0008 d7 9f b2d3 }

	condition:
		7 of them and filesize <3268608
}