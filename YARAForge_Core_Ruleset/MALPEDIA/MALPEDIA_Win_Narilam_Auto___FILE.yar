rule MALPEDIA_Win_Narilam_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "da9d4048-8edf-5bad-820f-4e60bf8a1167"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.narilam"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.narilam_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "9c97c97f1983ca4888bd0ceffb3db6cc9301c52fb6e7adafbcc7af03cf7073fe"
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
		$sequence_0 = { e8???????? f645f801 7518 8d55f4 a1???????? e8???????? 8b45f4 }
		$sequence_1 = { 8d8550ffffff ba02000000 e8???????? 66c785dcfeffffe801 ba???????? 8d854cffffff e8???????? }
		$sequence_2 = { e8???????? 8b55fc 8bc6 e8???????? 8bf8 e9???????? 8d5308 }
		$sequence_3 = { eb83 e9???????? 66b86801 ebf5 66b86901 ebef 66b86a01 }
		$sequence_4 = { e8???????? eb08 8b45fc e8???????? 33c0 5a 59 }
		$sequence_5 = { e8???????? c3 3a90e2020000 740b 8890e2020000 e8???????? c3 }
		$sequence_6 = { e8???????? 8bc8 8bd3 8b831c020000 ff9318020000 33c0 8a45ff }
		$sequence_7 = { a5 a5 a5 8d4584 8d4dd4 ba04000000 e8???????? }
		$sequence_8 = { ff852cffffff 8d5588 8d45fc e8???????? ff8d2cffffff 8d4588 ba02000000 }
		$sequence_9 = { 8d8580feffff e8???????? ff854cfeffff 8d9580feffff 8d45fc e8???????? ff8d4cfeffff }

	condition:
		7 of them and filesize <3325952
}