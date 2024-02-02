rule MALPEDIA_Win_Lunchmoney_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8af393b3-e0ee-5b29-9ae9-6b5b0b5bb360"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lunchmoney"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.lunchmoney_auto.yar#L1-L126"
		license_url = "N/A"
		logic_hash = "4e3c0ce49996288518b2f9a0e709877b3f945a71128e29da2214bd53e19246e9"
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
		$sequence_0 = { 8b4304 8d4b0c 83791408 8945dc 8b4308 8945e0 7202 }
		$sequence_1 = { 7405 e8???????? a900000080 751f d9fa 833d????????00 0f85f38b0000 }
		$sequence_2 = { c1e60a 56 e8???????? 56 8bf8 6a00 57 }
		$sequence_3 = { 53 8d4d08 e8???????? 83f8ff 750e 68???????? }
		$sequence_4 = { 8d4dd4 e8???????? 83f8ff 742d 6aff 40 }
		$sequence_5 = { 7420 53 8d85dcfeffff 50 }
		$sequence_6 = { ff7580 e8???????? 8b8568ffffff 014588 59 83957cffffff00 837d0800 }
		$sequence_7 = { 8bcf e8???????? 837f1408 8bc8 }
		$sequence_8 = { 8bc3 e8???????? c3 53 56 8bf1 57 }
		$sequence_9 = { 8d86f8000000 83c124 3bc8 740a 6aff 6a00 50 }

	condition:
		7 of them and filesize <373760
}