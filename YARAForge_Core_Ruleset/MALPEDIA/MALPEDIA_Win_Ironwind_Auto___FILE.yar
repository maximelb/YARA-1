rule MALPEDIA_Win_Ironwind_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "59e0122b-e237-5b83-a993-a2711164e0ad"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ironwind"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.ironwind_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "db36742cc3e5372580f85bcac0b5325edc83e1defe6a3dbe06584de3a3fb0586"
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
		$sequence_0 = { be01000000 8bc6 e9???????? 4803c9 488b6cca08 4885ed 74e7 }
		$sequence_1 = { c3 4533c0 418d5002 8d4a15 ff15???????? 4883f8ff }
		$sequence_2 = { e9???????? 488d0d823e0300 4889bc24a0000000 e8???????? 488bf8 4885c0 7508 }
		$sequence_3 = { ff15???????? 488b742460 4885db 7409 488bcb ff15???????? 8bc7 }
		$sequence_4 = { 80b85011000001 488d152cc40400 488d0d4dc40400 480f45d1 488bc8 e8???????? 488bf8 }
		$sequence_5 = { 8d5001 8d4838 ff15???????? 488bf8 4885c0 7508 8d471b }
		$sequence_6 = { f20f1101 e9???????? 0f57c0 f2480f2a87100b0000 f20f1101 e9???????? 0f57c0 }
		$sequence_7 = { bf05000000 8bc7 eb53 bf02000000 8bc7 eb4a 664183f804 }
		$sequence_8 = { 85c0 742e 0fbe03 4c8d156f8ffdff 83c0e0 83f85a 0f8765020000 }
		$sequence_9 = { e8???????? 488b8f50070000 4885c9 7469 ff15???????? 488983d0060000 4885c0 }

	condition:
		7 of them and filesize <995328
}