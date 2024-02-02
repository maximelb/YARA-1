rule MALPEDIA_Win_Atmspitter_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "f9f02df1-a803-5665-939b-8200861b4172"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.atmspitter"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.atmspitter_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "97d22d23e6b57a565b78835f63d6efbbbb7ac3961285afa1ce44048c0fb5a727"
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
		$sequence_0 = { a900800000 7422 68???????? e8???????? 83ec24 }
		$sequence_1 = { 8be5 5d c3 8b5c2420 33c0 89442450 }
		$sequence_2 = { 56 89442418 e8???????? 83c40c 8bf0 8974244c }
		$sequence_3 = { a4 c744241831323000 88542422 c744242800000080 89442430 }
		$sequence_4 = { 8b442410 50 53 8d4c2468 68???????? 51 ff15???????? }
		$sequence_5 = { c3 8b04cd14c04000 5d c3 }
		$sequence_6 = { 8975e0 8db190c84000 8975e4 eb2b 8a4601 }
		$sequence_7 = { 6a03 6816011200 68???????? ff15???????? 6a02 6a00 8bf8 }
		$sequence_8 = { 83c404 8d442420 50 ff15???????? a900800000 7422 }
		$sequence_9 = { 6a00 57 ff15???????? 6a00 8d45fc }

	condition:
		7 of them and filesize <147456
}