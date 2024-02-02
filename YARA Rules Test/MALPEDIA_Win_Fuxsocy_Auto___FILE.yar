rule MALPEDIA_Win_Fuxsocy_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "acae4e77-3091-5877-bdf5-d5242a4de3aa"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fuxsocy"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.fuxsocy_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "7715515075d3596588ef1486b8f0b7f8a98d13af15afc29c2d4231048e4e16d8"
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
		$sequence_0 = { 72f0 8bcf e8???????? 5f 5e 5d ff74240c }
		$sequence_1 = { 8b4e08 890491 ff06 eb02 891e 5b 5f }
		$sequence_2 = { 6689442420 8d442422 53 50 894c2420 885c2413 895c2418 }
		$sequence_3 = { 85c0 7426 68???????? 68???????? ff15???????? 50 ff15???????? }
		$sequence_4 = { 6804010000 8d85ccfdffff 50 ff15???????? 68???????? 8d85ccfdffff 50 }
		$sequence_5 = { e8???????? 59 59 eb4b 807e0200 7404 85db }
		$sequence_6 = { c745f808020000 ff15???????? 85c0 753d 8d85e8fdffff 50 }
		$sequence_7 = { 33f6 ff15???????? 8bc8 e8???????? 85c0 7426 68???????? }
		$sequence_8 = { 68???????? 50 8d54241c 8d4c2424 e8???????? 83c40c 83c310 }
		$sequence_9 = { 50 ff74241c 33c9 ff74242c 41 c744242c32000000 c744246804000000 }

	condition:
		7 of them and filesize <131072
}