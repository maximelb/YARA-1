rule MALPEDIA_Win_Ragnarlocker_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "e474a54c-f0e2-58cf-8fb5-f5efe389dd86"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ragnarlocker"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ragnarlocker_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "0ce73fa8ff409c8b46cae101a5ed771c097f4c9fb16c4b873e6cf25053373d48"
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
		$sequence_0 = { 898df4feffff 894dc0 8b4f14 898decfeffff 894df8 8b4d0c 0fb601 }
		$sequence_1 = { 33f1 8b4de8 8bd0 2345d4 3355d4 2355c8 33d0 }
		$sequence_2 = { 0fb6c5 6a04 0bd0 0fb6c1 6800300000 c1e208 53 }
		$sequence_3 = { 039d28ffffff 13bd24ffffff 035d94 137d98 81c338b548f3 81d75bc25639 015df4 }
		$sequence_4 = { 0fa4ca17 c1ee09 c1e117 0bda 8b55dc 0bf1 8b4de0 }
		$sequence_5 = { 8bfa 8b4dd4 8bf1 337de8 3375f4 237dac 2355e8 }
		$sequence_6 = { 897dfc 8bbd34ffffff 8bf7 8bcf c1e618 0facd108 }
		$sequence_7 = { 3375ec 8b55e8 2355c0 2375d4 33fa 8b4df4 234dec }
		$sequence_8 = { 03c3 8945b8 13cf 33ff 894de0 }
		$sequence_9 = { c1e108 0bc8 0fb64604 c1e108 0bc8 894b14 0f114318 }

	condition:
		7 of them and filesize <147456
}