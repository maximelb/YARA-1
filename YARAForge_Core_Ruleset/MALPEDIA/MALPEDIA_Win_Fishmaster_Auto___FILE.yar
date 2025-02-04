rule MALPEDIA_Win_Fishmaster_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ac4d1a12-e633-54d1-8952-cc6fd81de034"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fishmaster"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.fishmaster_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "ee895ce428e3021476e31fc5a4cbc7a0e07349c7fde3100efce8681f3e034d54"
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
		$sequence_0 = { 4883f81f 7736 498bc8 e8???????? 48c7471000000000 }
		$sequence_1 = { e8???????? 488bc3 4c8b4318 4983f810 }
		$sequence_2 = { 7203 498b06 40883c08 c644080100 e9???????? 440fb6cf }
		$sequence_3 = { 488d156e220000 488bcb ff15???????? 488d156e220000 488bcb ff15???????? 4c8be8 }
		$sequence_4 = { 4157 4883ec60 488bfa 488bd9 33f6 897098 488970b0 }
		$sequence_5 = { 48837f1810 7203 488b07 488d4c2438 }
		$sequence_6 = { 0fb65310 8d42ff 3cfd 7718 88940d84000000 4883c314 }
		$sequence_7 = { 46383400 75f7 488d9580000000 488d4d20 e8???????? }
		$sequence_8 = { 480f434c2440 420fb6440803 4288440904 488d442440 48837c245810 480f43442440 488d4c2440 }
		$sequence_9 = { 4c8b45f8 488d15ce200000 488bcf ff15???????? 488bf8 4c89742430 4489742428 }

	condition:
		7 of them and filesize <812032
}