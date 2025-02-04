rule MALPEDIA_Win_Poohmilk_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "4a533432-ed1d-58b3-b34c-6e80b5d4a8fb"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.poohmilk"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.poohmilk_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "ecd179731e16caedb85d9961e87834bc792941e3499df96bf9bfcadeaf395c81"
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
		$sequence_0 = { d3eb 2bf1 8b0c850c344100 014c822c 40 89856cffffff e9???????? }
		$sequence_1 = { 898560f3ffff c705????????00000000 ffd7 8d8dccf7ffff 51 }
		$sequence_2 = { 0301 eb02 33c0 8b4d08 85c9 7406 }
		$sequence_3 = { 898d74d2ffff 898d78d2ffff 3bd9 7417 3bc1 7513 33c0 }
		$sequence_4 = { 83ffff 0f8410010000 53 8b1d???????? 6a02 }
		$sequence_5 = { 8bd6 e8???????? 33c9 3b85a4fdffff 5f }
		$sequence_6 = { 85c0 0f8499000000 68???????? 8d842424020000 50 ffd6 8b4c2410 }
		$sequence_7 = { 23fb d3eb 0fbe8a10344100 03f9 }
		$sequence_8 = { 5e c21000 8bff 55 8bec 8b4d0c }
		$sequence_9 = { 8b4710 8b4e28 53 52 8b5624 }

	condition:
		7 of them and filesize <245760
}