rule MALPEDIA_Win_Comlook_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "860e6423-7c42-5b7a-b226-a660c40ee352"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.comlook"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.comlook_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "4752c20623b9cb3b21f01ebe269fa3b02a3d0ecab0d63ba89a5af7bf48ed8b4a"
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
		$sequence_0 = { c1ff1f 03c1 13d7 2b442434 b900000000 1bd1 33ff }
		$sequence_1 = { e8???????? 8d45e0 50 c645fc02 e8???????? 83c42c 8bd8 }
		$sequence_2 = { ff15???????? 83c404 3bf4 e8???????? b843000000 e9???????? c7854cffffff00000000 }
		$sequence_3 = { e8???????? 8b4e08 80791500 7579 8b01 80781401 7509 }
		$sequence_4 = { c1ed08 036e04 25ff000000 036c2414 8906 8b0f 0fb6c0 }
		$sequence_5 = { e9???????? 8b4518 0b451c 7509 33c0 33d2 e9???????? }
		$sequence_6 = { e8???????? 83c408 85c0 7410 8b4508 8b4df8 894858 }
		$sequence_7 = { e8???????? 8bf8 83c404 3bfb 0f8eab060000 c7463460210000 895e44 }
		$sequence_8 = { e8???????? a1???????? 33c4 89442418 53 8b5c2424 8b435c }
		$sequence_9 = { b8cccccccc 8945f0 8945f4 8945f8 8945fc 8b4508 0590050000 }

	condition:
		7 of them and filesize <4553728
}