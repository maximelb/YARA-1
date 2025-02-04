rule MALPEDIA_Win_Huskloader_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "2b71c66f-6603-595c-99bb-89c942583260"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.huskloader"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.huskloader_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "0b5c5ed5027920c73090f364afb1f0be41c97145cf9de72e357bac2712d50fca"
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
		$sequence_0 = { 8bc7 83e03f 6bc838 8b0495e88d0110 }
		$sequence_1 = { 59 e9???????? c745e003000000 e9???????? c745e4c05e0110 ebb8 d9e8 }
		$sequence_2 = { 6a00 681f000f00 50 ff15???????? 85c0 }
		$sequence_3 = { 740e 50 e8???????? 83a6e88d011000 59 83c604 81fe00020000 }
		$sequence_4 = { 8d043b 8b3485601f0110 8d4601 8945fc 8a06 46 }
		$sequence_5 = { 57 8bb81c060000 6a40 6800300000 56 6a00 ff15???????? }
		$sequence_6 = { 85c0 7411 8b35???????? b98b010000 }
		$sequence_7 = { 7420 6bc618 57 8db8288c0110 57 ff15???????? }
		$sequence_8 = { 8b35???????? 85f6 7420 6bc618 57 8db8288c0110 57 }
		$sequence_9 = { 0fb704850c3b0110 8d048508320110 50 8d8590faffff 03c7 50 }

	condition:
		7 of them and filesize <229376
}