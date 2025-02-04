rule MALPEDIA_Win_Bernhardpos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "7b2918eb-6e4b-588b-9817-19ede384242f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bernhardpos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.bernhardpos_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "b0e71b787dda9e2d7e79e7ddddae77406aa6aa8d138e23e43da621be02324cd1"
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
		$sequence_0 = { 0f840a010000 8d85ecfbffff 50 682a020000 68???????? 8b8df0fbffff }
		$sequence_1 = { ff15???????? 8b8d54feffff 668901 6a10 8d855cfeffff 50 }
		$sequence_2 = { 0fbe5415f8 33ca 8b4508 0345f4 8808 ebc7 5f }
		$sequence_3 = { 8945fc 8b45fc 8b4d08 03483c 894df4 }
		$sequence_4 = { 8808 ebc7 5f 5e 5b }
		$sequence_5 = { 668b0d???????? 66894dfc 8a15???????? 8855fe 8d45f8 50 ff15???????? }
		$sequence_6 = { 83e863 5f 5e 5b }
		$sequence_7 = { 51 ff15???????? 8d85ecfeffff 50 e8???????? 83c404 85c0 }
		$sequence_8 = { eb2c 33c0 eb2d 33c0 eb29 }
		$sequence_9 = { e8???????? 83c404 6a01 8d85d0feffff 50 ff15???????? }

	condition:
		7 of them and filesize <368640
}