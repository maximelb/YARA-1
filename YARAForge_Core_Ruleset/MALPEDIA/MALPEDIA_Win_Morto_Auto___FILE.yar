rule MALPEDIA_Win_Morto_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b4e2fdf6-28d4-5bb0-a9a0-1ea448c5566e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.morto"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.morto_auto.yar#L1-L116"
		license_url = "N/A"
		logic_hash = "a9b63fda2800565a4b4486897d85bf042e81c5ab64e52d3f79cf07bf3408f96f"
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
		$sequence_0 = { 280c30 40 3b450c 72f4 8b4608 6a40 }
		$sequence_1 = { 50 e8???????? 83c40c 8945e4 8d45cc }
		$sequence_2 = { 03d0 8911 ffd2 5f 5e }
		$sequence_3 = { 03f5 42 8a1e 46 }
		$sequence_4 = { ff35???????? c745ec04000000 c745fce8030000 ff15???????? }
		$sequence_5 = { 8bf0 c1ee08 83e601 8d3c56 }
		$sequence_6 = { 41 8d441201 8bd0 c1ea08 83e201 a87f 8d3c7a }
		$sequence_7 = { c745d0636c6965 c745d46e745c61 8945d8 c745dc44726f70 }
		$sequence_8 = { 6802000080 ff55e0 85c0 755f 8d45f8 50 }
		$sequence_9 = { 894dfc 895508 eb03 8b75f4 b980000000 33c0 8dbdf0fdffff }

	condition:
		7 of them and filesize <49152
}