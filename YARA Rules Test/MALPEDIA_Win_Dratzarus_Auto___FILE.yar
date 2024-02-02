rule MALPEDIA_Win_Dratzarus_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "3e7875e3-7e0c-5dea-9e90-8b6135466b8c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dratzarus"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dratzarus_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "5f92bffb1ff676600291544ee9f45d8f2036c734b0601a5e03b740f618ff0f21"
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
		$sequence_0 = { 740a 488b1b 4885db 75c2 eb2f 8b8398010000 }
		$sequence_1 = { f6c201 7403 66ffc3 66ffc0 6683f81a }
		$sequence_2 = { e8???????? f20f5ef0 f20f1005???????? f20f2cd6 660f6eca 4863c2 488d0c40 }
		$sequence_3 = { ff15???????? 488d4d68 ba13000000 488905???????? e8???????? }
		$sequence_4 = { 488d8dc8000000 ba1c000000 488905???????? e8???????? 488bcb 488bd0 ff15???????? }
		$sequence_5 = { 3c41 7c04 3c5a 7e08 3c30 7c19 3c39 }
		$sequence_6 = { 6683f81a 72e3 0fb7c3 4883c420 }
		$sequence_7 = { c745303ae47159 c7453474b06493 c745380897878b c6453c5b e8???????? 488bc8 }
		$sequence_8 = { c7450f86f5e3e6 c74513a93633c4 c7451793554020 c7451b48549c39 c7451faaa5f9c7 }
		$sequence_9 = { 488d4dc8 ba0c000000 488905???????? e8???????? 488bcb 488bd0 ff15???????? }

	condition:
		7 of them and filesize <1606656
}