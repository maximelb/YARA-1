rule MALPEDIA_Elf_Satori_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ef9a3def-11bf-57c1-9abe-eaf3ea87bbf4"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/elf.satori"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/elf.satori_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "acc91f43f84cb8d9ebcbacb4d453867e5ba0d238d6255f05df970cd0ecb540bb"
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
		$sequence_0 = { 85c0 7804 8b542414 89d0 83c41c }
		$sequence_1 = { e8???????? b9???????? b802000000 89ca e8???????? }
		$sequence_2 = { 89c6 53 89d3 83ec10 52 e8???????? }
		$sequence_3 = { b802000000 e8???????? b905000000 ba???????? b802000000 e8???????? b908000000 }
		$sequence_4 = { c744244800000000 e9???????? 8b542404 8b3482 6bc018 03442464 }
		$sequence_5 = { e8???????? 83c414 6a1f e8???????? c7042420000000 e8???????? c785280400001e000000 }
		$sequence_6 = { 85c0 7416 83ec0c ff35???????? e8???????? 59 6a00 }
		$sequence_7 = { 3b410c 747c 8b45bc 83ec0c 8b55cc 8d5def 8945e0 }
		$sequence_8 = { 6a04 56 53 e8???????? 8844243a 83c420 6a00 }
		$sequence_9 = { 6a15 68???????? 6a1d e8???????? 83c40c 6a15 68???????? }

	condition:
		7 of them and filesize <122880
}