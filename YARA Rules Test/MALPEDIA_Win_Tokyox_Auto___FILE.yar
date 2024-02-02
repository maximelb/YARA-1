rule MALPEDIA_Win_Tokyox_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6ca744f8-6e83-57d0-b9b1-d948cf62f189"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tokyox"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.tokyox_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "6c96cc95cf53b382f98148013ad4ad66eb649ce28d4ba112298bfa55f06ac1c7"
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
		$sequence_0 = { 6685c0 75e8 8d8570ffffff 8bf0 }
		$sequence_1 = { bb0f000000 8975d8 8975e8 51 68ffff0000 50 }
		$sequence_2 = { ff15???????? 85c0 0f8456010000 837d1000 751b 68c8000000 }
		$sequence_3 = { 8d4598 8bcb 50 6888130000 8d45dc 50 e8???????? }
		$sequence_4 = { 8d854cf5ffff 50 68???????? ff15???????? }
		$sequence_5 = { 0f114590 0f104010 0f1145c0 0f1145a0 }
		$sequence_6 = { ff730c ffd7 e9???????? 8d8550ffffff 0f57c0 50 0f114310 }
		$sequence_7 = { 8d85f0faffff c645a000 50 ff75a0 8d4de8 }
		$sequence_8 = { 8bf8 56 53 57 e8???????? 0f1045d0 }
		$sequence_9 = { 668903 8d5101 8a01 41 84c0 75f9 ff75f8 }

	condition:
		7 of them and filesize <237568
}