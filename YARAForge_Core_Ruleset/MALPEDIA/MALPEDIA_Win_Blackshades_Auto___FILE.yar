rule MALPEDIA_Win_Blackshades_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "be0044cc-ffdd-5ce8-9261-6f20deb49ec5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.blackshades"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.blackshades_auto.yar#L1-L117"
		license_url = "N/A"
		logic_hash = "5be1fd8de19e4a88da957f4843427153e72a697b528878c27f4d0e3032429536"
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
		$sequence_0 = { ff9e0460ff34 6c 60 ff0a }
		$sequence_1 = { 08fe f5 0200 0000 6c 70ff 9e }
		$sequence_2 = { 70ff f30004eb f4 02eb fb cf }
		$sequence_3 = { 351cff1e55 2c00 0d6c04ff1b c700fb301cc9 }
		$sequence_4 = { 58 2f 60 ff6c74ff }
		$sequence_5 = { 2a23 60 ff1b 0d002a460c fff5 0200 0000 }
		$sequence_6 = { 6c ff4a71 70ff 00746c78 ff1b }
		$sequence_7 = { 6c ff4a71 70ff 00746c78 ff1b 4a }
		$sequence_8 = { ff6c48ff 6c 4c ff40fc }
		$sequence_9 = { ff1b 0d002a460c fff5 0200 0000 6c }

	condition:
		7 of them and filesize <999424
}