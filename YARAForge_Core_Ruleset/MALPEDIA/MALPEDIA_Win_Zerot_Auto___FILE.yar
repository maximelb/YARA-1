rule MALPEDIA_Win_Zerot_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8ef83190-c437-5c69-9e28-6f4ff8bb0d5f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.zerot"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.zerot_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "0536a182186ebeb3c971f24e54b07f0b9a695f53e7e594ac1e15149db29c5630"
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
		$sequence_0 = { ff15???????? 46 81e6ff000080 7908 }
		$sequence_1 = { 50 68???????? ff15???????? 8b3d???????? 8d85bcfbffff 50 }
		$sequence_2 = { 6a00 ff760c ff15???????? 85c0 7430 6a00 8d85ccf9ffff }
		$sequence_3 = { 8bf8 6a59 ff15???????? 85c0 b9???????? 0f45cf }
		$sequence_4 = { 8b8ef2050000 8d96fa050000 e8???????? 8d8534cdffff 50 6802020000 ff15???????? }
		$sequence_5 = { 85c0 740c 81bd34fcffffc8000000 7421 8b8530fcffff 40 898530fcffff }
		$sequence_6 = { 8d7001 75da 8b35???????? 8d857cffffff 50 ffd6 83c002 }
		$sequence_7 = { 6800020000 8d85bcfdffff 6a00 50 e8???????? 68???????? }
		$sequence_8 = { 880c32 8a47f8 c0e005 02c1 880432 }
		$sequence_9 = { 0f84b6000000 80bd53fcffff00 0f84a9000000 0fb74214 }

	condition:
		7 of them and filesize <303104
}