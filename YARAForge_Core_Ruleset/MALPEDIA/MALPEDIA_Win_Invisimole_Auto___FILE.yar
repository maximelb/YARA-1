rule MALPEDIA_Win_Invisimole_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ca18c738-4139-5525-aa28-1ccc54f29c64"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.invisimole"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.invisimole_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "c66d253d3c18c58309d81357b0c6a50ba445964c209a2fd7bab05aae7420f29c"
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
		$sequence_0 = { 668945f0 8d863e020000 50 ffd7 33c9 668945f2 8d45f8 }
		$sequence_1 = { 8d5590 52 50 e8???????? 83c40c 83f8ff 0f848df1ffff }
		$sequence_2 = { 0fb65714 83c448 6a01 8d45ff 50 56 8855ff }
		$sequence_3 = { 6a01 8d45ff 50 56 c645ff33 }
		$sequence_4 = { 8bec 83ec4c 53 56 8bf0 57 8d45b4 }
		$sequence_5 = { 47 83ff09 72d5 8b0d???????? 56 6a00 51 }
		$sequence_6 = { 57 6860040000 33db 53 56 e8???????? a1???????? }
		$sequence_7 = { 8b45fc 50 a1???????? 6a00 50 ffd7 8b4308 }
		$sequence_8 = { 8b45f4 8a5dfb 50 ff15???????? 8ac3 5f }
		$sequence_9 = { 53 e8???????? 8b75df 81fee6010000 0f8335050000 8a8746020000 0a4710 }

	condition:
		7 of them and filesize <139264
}