rule MALPEDIA_Win_Webmonitor_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "aca2309c-f3e7-5982-bcd7-9e22f09c3e41"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webmonitor"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.webmonitor_auto.yar#L1-L158"
		license_url = "N/A"
		logic_hash = "7913959618328b6198214b581f33ca34a8ffc8b00c2415ca23bf0e5f2e066370"
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
		$sequence_0 = { 06 000b 3a58ff 1b03 fd 006cff1e e00e }
		$sequence_1 = { 41 0080cd41009c d34100 e8???????? }
		$sequence_2 = { 0094be4100d891 41 0084e84100a872 42 00a06a4200f8 }
		$sequence_3 = { 0028 fa 41 0014b4 42 }
		$sequence_4 = { b9???????? ffe1 ba???????? b9???????? ffe1 ba???????? b9???????? }
		$sequence_5 = { 000e 6c 74ff f5 }
		$sequence_6 = { ff05???????? 000d???????? 04b8 fe04e4 fd 04e0 fd }
		$sequence_7 = { 00dc 7442 000477 42 0028 }
		$sequence_8 = { 00e8 dd7000 008bf98b5d1c 8d4de4 }
		$sequence_9 = { 00d1 6848007269 48 00856948008b }
		$sequence_10 = { 0108 eb5a 8b4508 83ceff }
		$sequence_11 = { 0108 8b442410 891e 894604 }
		$sequence_12 = { 00d1 6848004069 48 00d1 }
		$sequence_13 = { 000f b681 fc b84500ff24 }
		$sequence_14 = { 00e8 f61c00 008bd9895df0 8b451c }
		$sequence_15 = { 00856948008b ff558b ec 83ec0c }

	condition:
		7 of them and filesize <1867776
}