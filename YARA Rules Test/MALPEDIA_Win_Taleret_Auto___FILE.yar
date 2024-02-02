rule MALPEDIA_Win_Taleret_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "90652d3d-3308-5c4e-91b0-de6f7ec4ea56"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.taleret"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.taleret_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "0af9ed1f3725609b54a6e19f400c5abe16095e727614fae56d9f4e23ded04fd2"
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
		$sequence_0 = { c68424b40300000d e8???????? 50 8d4b18 }
		$sequence_1 = { 8b44240c 8b4c2408 8b542404 6a00 6a00 6a03 68???????? }
		$sequence_2 = { 51 50 68???????? 890d???????? }
		$sequence_3 = { 8d442408 c744242401000000 50 ff15???????? 85c0 7528 8b4c2438 }
		$sequence_4 = { 8d4e3c c644241c05 e8???????? 8d4e40 c644241c06 e8???????? }
		$sequence_5 = { c60600 e8???????? 83c40c 85c0 7526 57 8d8c24e8000000 }
		$sequence_6 = { 85c0 0f85b2000000 a1???????? 668b0d???????? 8a15???????? 89842480000000 }
		$sequence_7 = { c684247016000001 e8???????? 8b9c247c160000 8b6c241c e9???????? 8b442424 8b4c2414 }
		$sequence_8 = { 8a440444 eb02 b03d 83fd01 884301 7e33 }
		$sequence_9 = { e8???????? 83c408 33f6 e8???????? 8a96f0700010 32d0 }

	condition:
		7 of them and filesize <73728
}