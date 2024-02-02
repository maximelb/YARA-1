rule MALPEDIA_Win_Lockergoga_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1c23217f-5659-545b-a560-32c15b901216"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lockergoga"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.lockergoga_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "0b1cfe6b39387960d8fabaa4bf38642a4ddd7ce3aadb70d3ac9c167b96d0b767"
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
		$sequence_0 = { e9???????? 33c0 897dd4 8b560c 33c9 894514 3bc3 }
		$sequence_1 = { 725e 8b06 8b7e38 8b80e4000000 89459c 3bd7 722c }
		$sequence_2 = { e8???????? 50 ffb5f0feffff 8d85c0feffff c645fc0c 50 8bcf }
		$sequence_3 = { ff10 8d4b10 e8???????? 6a38 53 e8???????? 83c408 }
		$sequence_4 = { e8???????? 8d45d8 c645fc04 50 8bcb e8???????? 8b1b }
		$sequence_5 = { e8???????? 8d45c0 c645fc01 50 8bce e8???????? 8bf0 }
		$sequence_6 = { 8b4df0 33cd e8???????? 8be5 5d c3 ff7594 }
		$sequence_7 = { 8b5904 8b7d0c 8975e8 8975ec 8945f0 c745fc00000000 85ff }
		$sequence_8 = { f30f7e4710 660fd64610 c7471000000000 c747140f000000 c60700 83c718 c745fcffffffff }
		$sequence_9 = { e8???????? 8bc8 3bcf 7413 837f1410 8bc7 7202 }

	condition:
		7 of them and filesize <2588672
}