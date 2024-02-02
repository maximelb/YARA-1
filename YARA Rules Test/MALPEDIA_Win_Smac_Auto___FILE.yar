rule MALPEDIA_Win_Smac_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b9e948cf-fc1c-55b5-a40e-593d0b67f4eb"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.smac"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.smac_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "69ecbaffb88ef2eb7b0bb4fc54b666c372bcfee7df6d63633067f160f5f10295"
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
		$sequence_0 = { 66898548ffffff 8bc3 6689854affffff 58 6a74 6689854cffffff 58 }
		$sequence_1 = { 39bd78feffff 0f86b8000000 ffb578feffff e8???????? ffb578feffff 8bf0 57 }
		$sequence_2 = { 668945ec 668975ea 8d8598feffff 8bf4 89a578feffff 50 }
		$sequence_3 = { 8d9d44ffffff e8???????? 6a01 33ff 8bf3 e8???????? 8b1d???????? }
		$sequence_4 = { e8???????? 83ec1c c68424900100000e 8d842484000000 8bf4 8964245c }
		$sequence_5 = { 8945f0 3bc3 7514 6a01 33ff 8d7508 e8???????? }
		$sequence_6 = { 83c42c 33f6 46 5b ffb5f480ffff ff15???????? }
		$sequence_7 = { 8986d8000000 ffd7 8986dc000000 8bc6 e8???????? c20800 6a00 }
		$sequence_8 = { 8bf4 89a578feffff 50 e8???????? 83ec1c c645fc04 8d4528 }
		$sequence_9 = { 66899d42ffffff 5b 6a74 66899d44ffffff 5b }

	condition:
		7 of them and filesize <212992
}