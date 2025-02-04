rule MALPEDIA_Win_Ccleaner_Backdoor_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "fc5d42e4-2b09-51e8-9476-e6d57b9f6fbe"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ccleaner_backdoor"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ccleaner_backdoor_auto.yar#L1-L264"
		license_url = "N/A"
		logic_hash = "437c1ac4e0723d85ccca29c304bbc711ed3ae66fbe1eeb3f8d5172b567e72b6c"
		score = 75
		quality = 73
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
		$sequence_0 = { 57 ffd6 50 ff15???????? 8b3d???????? }
		$sequence_1 = { ff15???????? 8b3d???????? 59 ffd7 }
		$sequence_2 = { 750a b857000780 e9???????? e8???????? }
		$sequence_3 = { 01460c 488b3f 493bfc 0f8554ffffff }
		$sequence_4 = { 00cc cc 4883ec28 488b11 }
		$sequence_5 = { 49 75f9 ffd3 6800400000 }
		$sequence_6 = { ff75f0 ff15???????? 85c0 0f850c010000 8b35???????? 53 }
		$sequence_7 = { 01442424 eb30 8b4508 897518 }
		$sequence_8 = { 03c0 894340 8b7340 418bc4 }
		$sequence_9 = { 03c6 4863d0 4c8d0c12 4c8d4718 }
		$sequence_10 = { 03c6 85c0 7f09 488b0a 488b01 ff5008 488b4b28 }
		$sequence_11 = { 891d???????? 68???????? 6a03 53 68???????? ff742424 891d???????? }
		$sequence_12 = { 6a04 50 8d45e0 6a04 50 8d85e0feffff 50 }
		$sequence_13 = { c1e008 8d8418a1000000 50 e8???????? 85c0 7545 }
		$sequence_14 = { 012e 33c0 5f 5e 5d }
		$sequence_15 = { 00cc cc 4057 4883ec50 4533db }
		$sequence_16 = { 8b7df8 0faff8 ffd6 33f8 }
		$sequence_17 = { 01442454 03d1 294c2450 8b4c2410 }
		$sequence_18 = { 50 68???????? ff742418 ff15???????? 85c0 0f8579010000 }
		$sequence_19 = { c7471854b40210 c1e803 3bc1 7302 8bc8 6afd }
		$sequence_20 = { 3bc2 7661 89450c 8a06 46 50 e8???????? }
		$sequence_21 = { 013d???????? 8b04b5d8970210 0500080000 3bc8 }
		$sequence_22 = { 3b7d10 0f8264010000 3bfa 0f835c010000 2bda 8d4602 }
		$sequence_23 = { 013e 33c0 8b16 83c410 }
		$sequence_24 = { e8???????? 8b4510 59 f7d8 }
		$sequence_25 = { 01442418 03c8 8954242c 8b542470 }
		$sequence_26 = { 01461c 8b542424 85d2 7405 }
		$sequence_27 = { 01cc cc 48895c2408 57 }
		$sequence_28 = { 4c 8bca c1e002 4c 03d5 48 }

	condition:
		7 of them and filesize <377856
}