rule MALPEDIA_Win_Yarat_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "9b4289ae-23e7-5628-ab26-1ca831bf886f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.yarat"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.yarat_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "6ef74e5effac24b08695314060e4e7e4519b854f50f85d73d7052d0ace49145b"
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
		$sequence_0 = { e8???????? 8b75a8 8bf8 3bf7 7465 8b4e14 83f910 }
		$sequence_1 = { c70000000200 e9???????? 56 68???????? 57 e8???????? 83c40c }
		$sequence_2 = { 8d8544feffff 6a00 57 89864c010000 e8???????? 83c414 80bf0b05000000 }
		$sequence_3 = { e8???????? 83c40c 85d2 0f8f28010000 7c08 85c0 0f831e010000 }
		$sequence_4 = { 8b8f90050000 83c40c 85c9 7506 8b8f04030000 8b8748050000 8b4040 }
		$sequence_5 = { 8a18 885dfe 80fb2e 8b5d08 7406 807dfe2c 7534 }
		$sequence_6 = { 07 20c2 aa 709a 93 a3???????? 9e }
		$sequence_7 = { 8b75fc 8bc7 c1e808 83e00f 8a80d0070a10 880433 8bda }
		$sequence_8 = { e8???????? 83c408 85c0 7405 8d7728 eb38 8d85fcefffff }
		$sequence_9 = { 8b4508 33f6 83f8ff 742d 8d8df4fdffff 51 50 }

	condition:
		7 of them and filesize <8692736
}