rule MALPEDIA_Win_Unidentified_096_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "22c09f40-2011-5730-9e32-986d3f55e0d2"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_096"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.unidentified_096_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "5261db5ca22f6df28b3364eb8987d65dbffd712b51f02eb4b92928e711dc9c45"
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
		$sequence_0 = { 896c2444 c744244806000000 896c244c c744245010304000 }
		$sequence_1 = { ff15???????? 8bf0 a1???????? 3bf0 }
		$sequence_2 = { b021 a2???????? eb56 b040 a2???????? eb4d }
		$sequence_3 = { b02b eb11 b02d eb0d f644240c01 740b b02e }
		$sequence_4 = { 68???????? 52 e8???????? 83c424 8b4c242a 6683f930 0f8283000000 }
		$sequence_5 = { 90 6aff 68???????? 68???????? 64a100000000 }
		$sequence_6 = { 8b4c2420 8b54241c 8b442414 51 52 68ff000000 }
		$sequence_7 = { 3dff000000 741d 8b4c2420 8b54241c 51 52 }
		$sequence_8 = { b029 a2???????? eb5f b021 }
		$sequence_9 = { 56 8b35???????? 57 6a14 ffd6 6a10 0fbfd8 }

	condition:
		7 of them and filesize <25648
}