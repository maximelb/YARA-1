rule MALPEDIA_Win_Appleseed_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5111027d-aef3-530a-baef-816a96e705d5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.appleseed"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.appleseed_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "a810d449fba9d18767008ae79deb61edb7dc0a7b0fedfb1cf50aff52e06540b9"
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
		$sequence_0 = { 448bc6 442bc0 488b442450 488d0d65d30100 488b0cc1 4c8d4c244c 488d9520060000 }
		$sequence_1 = { 4c89b590000000 c6858000000000 4883bde000000010 720c 488b8dc8000000 e8???????? 8bc7 }
		$sequence_2 = { 90 488d4db8 e8???????? 48833d????????00 0f84b10c0000 }
		$sequence_3 = { 488bcb ff15???????? ff15???????? 33ff 8bf0 0f1f8000000000 ff15???????? }
		$sequence_4 = { 90 488d4db8 e8???????? 48833d????????00 0f84c0040000 488d157e170200 488d4db8 }
		$sequence_5 = { 488bce ff15???????? 4885c0 7411 83caff 488bc8 }
		$sequence_6 = { e9???????? 488d8af0000000 e9???????? 488b8a60000000 e9???????? 488d8a10010000 e9???????? }
		$sequence_7 = { 0f8490000000 85db 0f8488000000 41880f 4b8b84e900670300 4183caff 4103da }
		$sequence_8 = { 48ffc7 803c3a00 75f7 488d4c2450 4c8bc7 e8???????? 488d4c2450 }
		$sequence_9 = { 48895dc8 c645b800 41b838000000 488d15b81d0200 488d4db8 e8???????? 90 }

	condition:
		7 of them and filesize <497664
}