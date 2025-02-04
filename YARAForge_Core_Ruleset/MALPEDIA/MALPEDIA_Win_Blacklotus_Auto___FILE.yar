rule MALPEDIA_Win_Blacklotus_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "84ef9a0b-6544-5450-8b66-292ec2ba5dbd"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.blacklotus"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.blacklotus_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "94ccc2d7ff61cb6463b78893aadb2549c584433629bcbab33ca8298790f40cde"
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
		$sequence_0 = { 443bca 7319 69c03f000100 4883c102 4103c0 41ffc1 440fb701 }
		$sequence_1 = { c745cfc1afbd03 c745d301138a6b c745d73a911141 c745db4f67dcea c745df97f2cfce }
		$sequence_2 = { 448bc6 488d155b1d0000 488bcb e8???????? 488bf0 }
		$sequence_3 = { 770b 418b4908 03ca 413bcb 770e 6641ffc2 4983c128 }
		$sequence_4 = { 42883c10 4183fb3c 0f8c45ffffff 498d8af0000000 41b810000000 498bd6 }
		$sequence_5 = { 488d1588f7ffff e8???????? 488b05???????? 488bcb ff5020 488b5c2430 488b742438 }
		$sequence_6 = { 4632440c30 eb1b 418af1 83f804 }
		$sequence_7 = { 4889442428 4c8bc5 488bd3 48897c2420 }
		$sequence_8 = { 740b 4883c602 483bf7 72bd eb0c bb03000000 eb05 }
		$sequence_9 = { 48897010 48897818 4c897020 55 488d68c8 4881ec30010000 4c8bd1 }

	condition:
		7 of them and filesize <181248
}