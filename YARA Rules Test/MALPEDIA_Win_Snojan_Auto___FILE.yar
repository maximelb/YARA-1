rule MALPEDIA_Win_Snojan_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "96ddba9d-1a09-5178-a027-761c3b0ea160"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.snojan"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.snojan_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "a7da77f2b75075e9b17ce3132c822da8d2432067b99e241b1e6927c5f09a8d94"
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
		$sequence_0 = { ff15???????? 83ec0c 83f8ff 0f8487010000 89c7 b802000000 c70424???????? }
		$sequence_1 = { b802000000 c70424???????? 6689442420 ff15???????? 83ec04 c70424???????? 89442424 }
		$sequence_2 = { 8d5c2430 c644241f00 c744240c00000000 c744240800900100 895c2404 893c24 ff15???????? }
		$sequence_3 = { a1???????? 8b988000986d 85db 74da }
		$sequence_4 = { 8d860000986d 8955cc e8???????? 8b45cc }
		$sequence_5 = { 893c24 ff15???????? 83ec10 83f800 }
		$sequence_6 = { e9???????? 0fb7810000986d 894dc0 89c7 81cf0000ffff 6683b90000986d00 0f48c7 }
		$sequence_7 = { 85c0 74e9 a1???????? 8b988000986d 85db 74da 895c2404 }
		$sequence_8 = { 837c243401 753d c744241400000000 c744241000000000 }
		$sequence_9 = { 85c0 b801000000 0f44d0 8854241f 8974240c 896c2408 }

	condition:
		7 of them and filesize <90112
}