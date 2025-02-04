rule MALPEDIA_Win_Bumblebee_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "2d631f7c-7434-5c27-9009-44b4e59637b5"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bumblebee"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.bumblebee_auto.yar#L1-L109"
		license_url = "N/A"
		logic_hash = "5441d9d4140ebd43dfbd5141b1d6fd9472ec1ff4702b3388ec7d6ec403a89c52"
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
		$sequence_0 = { 0fb7570e 6623d1 740d 0fbe470d b90d000000 2bc8 }
		$sequence_1 = { 0f44c1 833c1800 7475 837c180400 746e 8b1418 488b05???????? }
		$sequence_2 = { 0f88cc000000 4863533c 488b05???????? 4803d6 4885c0 0f84b5000000 488d4c2430 }
		$sequence_3 = { 0f880c010000 488b7580 4885f6 0f84ff000000 488b05???????? 4885c0 0f84ef000000 }
		$sequence_4 = { 0f8895000000 8b7b28 b8c0000000 4803fe ba64860000 66395304 8d4810 }
		$sequence_5 = { 0fbec0 8d59e8 8d1c58 ffc2 }
		$sequence_6 = { 0f57c0 c744242800000008 4c8d45d0 488975d8 8d4640 488975e0 }
		$sequence_7 = { 0f8840010000 488b05???????? 4885c0 0f8430010000 488b542448 488d4c2438 48894c2420 }

	condition:
		7 of them and filesize <4825088
}