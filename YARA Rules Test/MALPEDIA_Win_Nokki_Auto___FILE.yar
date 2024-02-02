rule MALPEDIA_Win_Nokki_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "02120b2b-1366-521d-89f5-fe0cec012c20"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nokki"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.nokki_auto.yar#L1-L156"
		license_url = "N/A"
		logic_hash = "e29386a66940956320f6fdb11113fafeb375dcdfcfa05926d55033ad903bf7f3"
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
		$sequence_0 = { e8???????? 33d2 68ce070000 52 }
		$sequence_1 = { e8???????? 33c9 68ce070000 51 }
		$sequence_2 = { 8b420c 898d08f8ffff b9???????? 89b518f8ffff ffd0 }
		$sequence_3 = { 884c0204 8b06 8bd0 83e01f c1fa05 8b149580054100 c1e006 }
		$sequence_4 = { 8d8daaddffff 51 668985a8ddffff e8???????? 6800010000 8d95f0feffff 6a00 }
		$sequence_5 = { 6a01 6a00 ff15???????? 8bf8 85ff 0f848a000000 6a00 }
		$sequence_6 = { 51 8d9520f8ffff 52 e8???????? 83c408 85c0 744a }
		$sequence_7 = { ffd6 57 ffd6 68a0bb0d00 }
		$sequence_8 = { 8a8c181d010000 888888054100 40 ebe6 ff35???????? }
		$sequence_9 = { 33ff ffb7d4ec4000 ff15???????? 8987d4ec4000 83c704 83ff28 }
		$sequence_10 = { 83c40c 6804010000 8d95f4fdffff 52 6a00 ffd6 }
		$sequence_11 = { 8d7810 89bd68e8ffff 8b8d60e8ffff 8b9564e8ffff 8d856ce8ffff 50 }
		$sequence_12 = { 8bce e8???????? 33d2 6806020000 52 8d85eafdffff 50 }
		$sequence_13 = { 8d8df4fdffff 51 ffd3 8d95f4fdffff 68???????? }

	condition:
		7 of them and filesize <454656
}