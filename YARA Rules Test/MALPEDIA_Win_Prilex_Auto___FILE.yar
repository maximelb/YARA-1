rule MALPEDIA_Win_Prilex_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "33d37f97-5d7f-5370-b6c1-4299d7c65706"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.prilex"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.prilex_auto.yar#L1-L117"
		license_url = "N/A"
		logic_hash = "3845b326ac2cf1def622498895bf69526e3d4fb73889990b08fc4c5071c0498b"
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
		$sequence_0 = { 8be8 ffd7 8d442410 8d4c2414 }
		$sequence_1 = { 8b0f 51 ff15???????? 8945e4 68???????? }
		$sequence_2 = { 8d442424 6a0c 8b11 50 52 56 }
		$sequence_3 = { e8???????? 5d 8d4c2420 8d542414 51 }
		$sequence_4 = { ff15???????? c745fc02000000 8b4510 33c9 833800 0f95c1 }
		$sequence_5 = { 8d858cfdffff 52 8d8d9cfdffff 50 51 }
		$sequence_6 = { 83c104 898d24ffffff c7851cffffff03400000 8d951cffffff 52 8d458c 50 }
		$sequence_7 = { 8d8dacfdffff 68???????? 52 898d54fdffff c7854cfdffff08400000 }
		$sequence_8 = { e8???????? 8bf0 ff15???????? 8d45ac }
		$sequence_9 = { ffd6 50 8d4da0 68???????? 51 ffd6 }

	condition:
		7 of them and filesize <450560
}