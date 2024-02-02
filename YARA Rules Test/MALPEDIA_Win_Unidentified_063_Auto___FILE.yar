rule MALPEDIA_Win_Unidentified_063_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "d22cba4e-b95b-5578-ac95-09534bd7dc14"
		date = "2022-11-21"
		modified = "2022-11-25"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_063"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.unidentified_063_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "14c180eecdf0e6fbf2b936d6c444ad58c2e649e1fa770106e8719057ee1aefbd"
		score = 75
		quality = 75
		tags = "FILE"
		version = "1"
		tool = "yara-signator v0.6.0"
		signator_config = "callsandjumps;datarefs;binvalue"
		malpedia_rule_date = "20221118"
		malpedia_hash = "e0702e2e6d1d00da65c8a29a4ebacd0a4c59e1af"
		malpedia_version = "20221125"
		malpedia_license = "CC BY-SA 4.0"
		malpedia_sharing = "TLP:WHITE"

	strings:
		$sequence_0 = { 8d43cf 83f819 770c 6689b550030000 e9???????? }
		$sequence_1 = { 7363 488bf3 4c8d35dfc40100 83e63f 488beb 48c1fd06 48c1e606 }
		$sequence_2 = { e8???????? 4863f8 488d3588800100 488bcb }
		$sequence_3 = { 0f11442478 4c8b4708 488d442470 493bc0 7362 488b07 488d4c2470 }
		$sequence_4 = { 4885c9 7407 48ff25???????? c3 48894c2408 57 4883ec50 }
		$sequence_5 = { 83f801 7518 488b0d???????? 488d05bf5f0100 483bc8 7405 e8???????? }
		$sequence_6 = { 8b8c96d0cd0200 8b534c 33c8 0fb6c1 }
		$sequence_7 = { 0f84e7000000 488b0e 483bc8 740e 4885c9 7406 }
		$sequence_8 = { 498bc2 418be9 48c1f806 488d0d708c0100 4183e23f 4903e8 }
		$sequence_9 = { 488d158a5a0200 488bcb e8???????? 85c0 7499 488d157f5a0200 488bcb }

	condition:
		7 of them and filesize <475136
}