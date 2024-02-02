rule MALPEDIA_Win_Chches_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "a2d17035-5b65-5ddb-9479-7e5b4a4aa253"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.chches"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.chches_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "90b994c4c0ea91e131f92144cfcd7cc30920c864cbd411a57992ff45077985cd"
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
		$sequence_0 = { 8b45f4 8b7dfc 50 8b8628020000 ffd0 8b45f8 85c0 }
		$sequence_1 = { 85c0 7e0b 8b55f8 8b435c 6aff 52 }
		$sequence_2 = { 8d5f18 85db 7477 8b16 8b4244 8b4018 }
		$sequence_3 = { 8b16 8945fc 8b4244 3bc7 0f842b020000 8b00 8b7dfc }
		$sequence_4 = { b810000000 e8???????? 83c420 8945f0 c745f400000000 85c0 0f8405010000 }
		$sequence_5 = { 66890c78 47 ba2a000000 8d8d98fdffff 66891478 8b9680020000 51 }
		$sequence_6 = { 8b4004 85c0 7475 3902 746d 8b4e64 50 }
		$sequence_7 = { 81e980191001 03c1 50 68bfa2c2cd 687f90b056 68a71001fe 686021a031 }
		$sequence_8 = { 895da0 85db 740f 8b87b8010000 8d5594 52 53 }
		$sequence_9 = { c745f401000000 eb1c 50 6a08 ffd2 50 }

	condition:
		7 of them and filesize <122880
}