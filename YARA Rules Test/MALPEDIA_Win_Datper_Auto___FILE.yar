rule MALPEDIA_Win_Datper_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "144df714-10f7-5eb5-ac00-48d1c0a0517d"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.datper"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.datper_auto.yar#L1-L128"
		license_url = "N/A"
		logic_hash = "96f11afeb919508bb147708a5d367711547bdbf470c62d9b42f3889c5cdbbcd4"
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
		$sequence_0 = { 33c9 ba0c000000 e8???????? c78564d7ffff0c000000 33c0 898568d7ffff }
		$sequence_1 = { 5a 59 59 648910 68???????? 8d85e8f3ffff }
		$sequence_2 = { 0fb607 8845f7 0fb6c1 8b55fc 0fb60402 8807 }
		$sequence_3 = { 50 ff15???????? 85c0 741f 8b8424a80d0000 894348 }
		$sequence_4 = { 895de4 895de8 895df4 894df0 8955f8 8945fc 8d45fc }
		$sequence_5 = { 53 e8???????? a3???????? 8d95a8fbffff b8???????? e8???????? 8b85a8fbffff }
		$sequence_6 = { c78568d7ffff0c000000 33c0 89856cd7ffff c78570d7ffffffffffff 6a00 6a01 8d8568d7ffff }
		$sequence_7 = { 8b45fc e8???????? 50 e8???????? 8d8564d7ffff 33c9 ba0c000000 }
		$sequence_8 = { 8d85f0fbffff 50 53 e8???????? 8945f0 a1???????? 50 }
		$sequence_9 = { 53 e8???????? 6800800000 6a00 56 }

	condition:
		7 of them and filesize <253952
}