rule MALPEDIA_Win_Dented_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "484f6875-8da3-59df-9796-ec6e3c5f3480"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dented"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dented_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "e9882555c27a882adee62a69216aa411600cf976159b592ea9f38f19d9990be3"
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
		$sequence_0 = { 8bf1 e8???????? 83c40c 89bd60ffffff 8d8560ffffff 50 ff15???????? }
		$sequence_1 = { 50 51 ebc7 6a0f 33db 5f 897df4 }
		$sequence_2 = { ffd6 ff75fc ffd6 6a00 6a01 8d4d08 e8???????? }
		$sequence_3 = { ff15???????? 3d0e000780 7422 3d08000c80 741b }
		$sequence_4 = { 8985c4fcffff 8d85f4fdffff 6a40 8985c8fcffff 8d85b4fcffff 5e 50 }
		$sequence_5 = { 8d4dc0 e8???????? 385dc4 7508 6a04 }
		$sequence_6 = { 6a40 5f 57 8d45b8 }
		$sequence_7 = { 8b85f8f7ffff 8a8485fcfbffff 32c1 880416 8b8decf7ffff }
		$sequence_8 = { 48 0d00ffffff 40 8a0a 8985f8f7ffff 8bbdf8f7ffff 0fb6c1 }
		$sequence_9 = { 8b4a38 3b08 6a0f 0f4208 33db 8b4210 }

	condition:
		7 of them and filesize <450560
}