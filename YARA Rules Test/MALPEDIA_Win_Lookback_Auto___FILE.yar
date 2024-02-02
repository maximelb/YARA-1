rule MALPEDIA_Win_Lookback_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5641bb4f-38a9-52e1-a4b7-204dc4620521"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lookback"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.lookback_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "68449af30b767d5c82dfe8271f4bbe8c83972fe98d28065e60e3bffd1a6dc166"
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
		$sequence_0 = { 53 8944241a 57 66894c2416 89442422 8bfa }
		$sequence_1 = { 8b7c241c 33ed 8b473c 8b443878 03c7 8b5024 }
		$sequence_2 = { 55 8bec 51 53 c745fc00000000 b801000000 }
		$sequence_3 = { c3 5e 5d 33c0 5b 81c410070000 c3 }
		$sequence_4 = { 3c01 893d???????? 893d???????? 752e }
		$sequence_5 = { c644240800 88442415 e8???????? 8d4c240c 89442408 51 }
		$sequence_6 = { 8d5108 d1e8 85c0 7e33 }
		$sequence_7 = { 74a7 8b06 85c0 757b }
		$sequence_8 = { 52 8d442418 57 50 68???????? 57 57 }
		$sequence_9 = { 55 8bec 51 53 c745fc00000000 b801000000 0fa2 }

	condition:
		7 of them and filesize <131072
}