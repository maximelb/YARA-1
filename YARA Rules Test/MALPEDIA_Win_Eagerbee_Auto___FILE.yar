rule MALPEDIA_Win_Eagerbee_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "2c944b22-0670-5d3a-8325-748c1204ab76"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.eagerbee"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.eagerbee_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "128c0a374c8b1a00f6b82c3fc65b3e7ab4f3e40ebdc9cd2ac65e4a7f259bdca2"
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
		$sequence_0 = { 493bc7 753b 488b05???????? ff05???????? 488bcb ff90f8000000 488d1560d80100 }
		$sequence_1 = { 488d15b7aa0100 41b908000000 48c7c101000080 498943d8 c744245810000000 ff15???????? 85c0 }
		$sequence_2 = { 0f44d8 eb0b 8b7c245c e8???????? 8bd8 85db 7415 }
		$sequence_3 = { 744c 488d15be810200 488bcb 4d8bc7 e8???????? 488b05???????? }
		$sequence_4 = { 8b01 eb06 ff90c0000000 410fb7cc eb3b 488bcf }
		$sequence_5 = { 85c0 751e 4c8b4c2448 4c8b442440 488d1517640100 488b4c2430 ff15???????? }
		$sequence_6 = { 8d6f07 458d77c7 8d5fce 488d8c2470010000 664489bc2470010000 6689bc2472010000 }
		$sequence_7 = { c68424c20000006f c68424c300000073 4088bc24c4000000 c68424c500000073 c68424c60000006f c68424c700000063 4488bc24c8000000 }
		$sequence_8 = { 8bd8 ebbf ff90e0000000 8bd8 85db 0f8481020000 3bdf }
		$sequence_9 = { 4533c9 4533c0 48896c2458 4489642450 4489742454 48898698080000 c7869408000004000000 }

	condition:
		7 of them and filesize <422912
}