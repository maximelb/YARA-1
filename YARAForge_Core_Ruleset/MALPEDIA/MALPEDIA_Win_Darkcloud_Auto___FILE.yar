rule MALPEDIA_Win_Darkcloud_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b0268fec-89c8-5323-9f85-c9d45089af7c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.darkcloud"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.darkcloud_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "500bafad0751f0834ef38cd2423929e4bf071aa68fdd5512e97c403f17f02fd3"
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
		$sequence_0 = { 83c414 8d4db0 ff15???????? c745fc23000000 8b4d08 894da8 }
		$sequence_1 = { 894598 894db0 8945a8 894dc0 8945b8 ff15???????? 50 }
		$sequence_2 = { 6a00 51 8bf0 ff15???????? 50 56 6a00 }
		$sequence_3 = { 8d8d68ffffff 51 ff15???????? c745fc06000000 ba???????? 8d4dcc ff15???????? }
		$sequence_4 = { 8d855cffffff 8d8df8feffff 50 8d954cffffff 51 52 c7851cffffff08000000 }
		$sequence_5 = { 668b55dc 663b954cffffff 0f8ff4000000 c745fc0c000000 8d45dc 894584 c7857cffffff02400000 }
		$sequence_6 = { ff15???????? 8bd0 8d8df0feffff ff15???????? 50 8b559c 52 }
		$sequence_7 = { 668b00 8975dc 662d0100 8975cc 0f80e4000000 8975ac 894584 }
		$sequence_8 = { 50 8d4d94 51 e8???????? 8bd0 8d4d84 ff15???????? }
		$sequence_9 = { ff15???????? 8bd0 8d4da8 ff15???????? 8d5588 52 8d458c }

	condition:
		7 of them and filesize <622592
}