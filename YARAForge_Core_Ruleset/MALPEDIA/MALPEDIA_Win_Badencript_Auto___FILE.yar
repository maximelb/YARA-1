rule MALPEDIA_Win_Badencript_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "14e6e038-56f2-594e-a7b6-4f5872213cea"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.badencript"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.badencript_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "2996c0cacc073d062d9370be45e59795727eb489c538600d3d982f614b0ed8f2"
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
		$sequence_0 = { 8bfe a1???????? 897de0 394508 7c1f 3934bd48414100 }
		$sequence_1 = { 8a07 8b0c9548414100 8844192e 8b049548414100 }
		$sequence_2 = { 6af6 ff15???????? 8b04bd48414100 834c0318ff 33c0 eb16 e8???????? }
		$sequence_3 = { 53 ffd7 83ee01 75eb 8b4dfc 33c0 }
		$sequence_4 = { 8b049d48414100 8945d4 8955e8 8a5c1029 80fb02 7405 80fb01 }
		$sequence_5 = { 660fd60f 8d7f08 8b048d04b54000 ffe0 f7c703000000 }
		$sequence_6 = { 8b049548414100 f644082801 740b 56 e8???????? 59 }
		$sequence_7 = { 0f859b010000 c745e0980f4100 8b4508 8bcf 8b7510 c745dc01000000 dd00 }
		$sequence_8 = { 58 6bc000 c7809439410002000000 6a04 }
		$sequence_9 = { 50 8b04bd48414100 ff743018 ff15???????? 85c0 0f95c0 5f }

	condition:
		7 of them and filesize <335872
}