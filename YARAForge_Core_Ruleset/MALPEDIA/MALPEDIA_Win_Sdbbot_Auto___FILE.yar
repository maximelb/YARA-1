rule MALPEDIA_Win_Sdbbot_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6668321a-45c2-56a4-8219-52041c66e0ea"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sdbbot"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.sdbbot_auto.yar#L1-L188"
		license_url = "N/A"
		logic_hash = "0618d5957379edb357e3ce8de647ff0724885b87e782036bd514add2c7f2cbe6"
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
		$sequence_0 = { e8???????? 8bf8 ba4d5a0000 6690 }
		$sequence_1 = { 803e61 7203 83c1e0 81c2ffff0000 03cf }
		$sequence_2 = { 8bcf 85d2 7418 8bfe 2b7df8 }
		$sequence_3 = { 8d4901 8841ff 8d5201 83ee01 }
		$sequence_4 = { 2bd1 03c1 8955ec 8945e4 85d2 0f8560ffffff }
		$sequence_5 = { 8b7028 33c9 0fb75024 0f1f8000000000 0fb63e }
		$sequence_6 = { 8b01 03c6 8945e8 eb2e 3daafc0d7c }
		$sequence_7 = { 6683f803 750b 81e1ff0f0000 013c31 eb27 6683f801 7511 }
		$sequence_8 = { c3 803d????????00 750c c605????????01 }
		$sequence_9 = { 33f6 8a27 83c702 84e4 7437 }
		$sequence_10 = { 7419 0f1f8000000000 0fb602 48ffc2 8801 488d4901 4983e801 }
		$sequence_11 = { 0f1f840000000000 418b49f8 49ffca 418b11 4903ce 458b41fc }
		$sequence_12 = { 7204 4883c0e0 4803c1 48ffc2 664503c1 75e5 3d5bbc4a6a }
		$sequence_13 = { 48833f00 488bd8 75a4 4883c514 837d0000 0f856dffffff }
		$sequence_14 = { 4903ce 41ffd5 488bf0 4885c0 7474 }
		$sequence_15 = { 85c0 0f84bb000000 418b9fb0000000 8bf8 4903de }
		$sequence_16 = { 4d2bc5 0fb601 41880408 488d4901 4883ea01 75ef 450fb74f14 }
		$sequence_17 = { 4d03fd 41b800300000 448d4940 418b5750 ffd6 418b5750 488bc8 }

	condition:
		7 of them and filesize <1015808
}