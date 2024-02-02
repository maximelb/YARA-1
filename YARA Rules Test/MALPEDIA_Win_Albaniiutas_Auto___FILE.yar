rule MALPEDIA_Win_Albaniiutas_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "59f4d909-2fdf-5b2b-b2d0-e08828d007ee"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.albaniiutas"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.albaniiutas_auto.yar#L1-L125"
		license_url = "N/A"
		logic_hash = "121e552bf42e7769ddf3d97832d0aa4668207291feb4416fe4bffab1efac2c40"
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
		$sequence_0 = { c745f800000000 50 8bf2 c745f400000000 8bf9 }
		$sequence_1 = { c1f906 6bc030 03048d90df0210 50 ff15???????? 5d c3 }
		$sequence_2 = { 23c1 eb57 53 8b1c85c8540110 }
		$sequence_3 = { c705????????01000000 c705????????01000000 6a04 58 6bc000 c7806cda021002000000 6a04 }
		$sequence_4 = { 59 83cfff 897de4 8365fc00 8b049d90df0210 8b4de0 f644082801 }
		$sequence_5 = { 898850030000 8b4508 59 c74048c0a40110 8b4508 6689486c }
		$sequence_6 = { 68???????? ffd6 68???????? 8d45d4 c745d400000000 50 e8???????? }
		$sequence_7 = { 83e801 0f8580000000 8b4508 dd00 ebc6 c745e0f87c0110 }
		$sequence_8 = { 660fd60f 8d7f08 8b048dd46a0010 ffe0 f7c703000000 7413 }
		$sequence_9 = { 33048dc01c0110 0fb6ca 33048dc0280110 ff4d08 0f8502feffff 83ff04 }

	condition:
		7 of them and filesize <566272
}