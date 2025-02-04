rule MALPEDIA_Win_Thunderx_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "bd791591-7f4e-54f3-bf78-0dd306ad53b2"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.thunderx"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.thunderx_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "088c8f2e806c5cf8226a8db8f2cdc4a3ddd2da7bdf68b4f2265db3773cd1c842"
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
		$sequence_0 = { 50 e8???????? c9 c3 c705????????58004200 b001 c3 }
		$sequence_1 = { b9???????? e8???????? 0fb60d???????? 84c0 6a01 58 0f45c8 }
		$sequence_2 = { 51 53 8b5d10 8bd1 56 57 8955fc }
		$sequence_3 = { 8d8d9cfbffff e8???????? 8d8d84fbffff e8???????? 8d8d6cfbffff e8???????? }
		$sequence_4 = { 6a02 8d44241c 895c2424 50 53 53 }
		$sequence_5 = { e8???????? 84c0 7558 83c718 3b7da0 75ea 8d4de0 }
		$sequence_6 = { 89459c 8945a0 e8???????? 84c0 0f858d000000 395f10 }
		$sequence_7 = { 03d1 8b0c85701b4200 8a0433 43 88440a2e 8b4dd8 8b55b4 }
		$sequence_8 = { 8932 897204 897208 5e 5d c20400 6a18 }
		$sequence_9 = { 8d8dd0fdffff e8???????? 8d4dac c645fc06 }

	condition:
		7 of them and filesize <319488
}