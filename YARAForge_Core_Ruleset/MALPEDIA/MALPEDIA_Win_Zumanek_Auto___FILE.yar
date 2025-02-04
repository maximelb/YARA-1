rule MALPEDIA_Win_Zumanek_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "87aee693-fd24-5045-ad68-bbf967fca577"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.zumanek"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.zumanek_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "692948458546aa7f1172f720f7a047815fbd39df276c694923c84a71f1135e40"
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
		$sequence_0 = { fc 81fe382e9330 97 e412 3dd16312c9 103f 0800 }
		$sequence_1 = { 8802 98 811212242434 48 3c91 4a }
		$sequence_2 = { 894612 4d 2454 48 5b 91 }
		$sequence_3 = { 71ef 1a6f35 e30b 5d fc 77f2 f1 }
		$sequence_4 = { 1dba45e22f 91 7c8b e459 0920 122424 }
		$sequence_5 = { 386b95 4c 53 196a17 }
		$sequence_6 = { 4a e8???????? 86b71986f742 06 58 4c 8812 }
		$sequence_7 = { c101f6 53 32b879629b65 76a2 43 fc }
		$sequence_8 = { d9c3 ab 5f c50f 9d 54 f233591b }
		$sequence_9 = { 5a c59cd53a93a658 98 9f f5 6b80e7fa856bb2 55 }

	condition:
		7 of them and filesize <58867712
}