rule MALPEDIA_Win_Badnews_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "82b67459-b37a-5597-851f-c5e10ae625fd"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.badnews"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.badnews_auto.yar#L1-L214"
		license_url = "N/A"
		logic_hash = "bc13ea27737db6028c742e92e044e676e8322f3710d6ba3506e9723f27d2a819"
		score = 75
		quality = 73
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
		$sequence_0 = { 50 e8???????? 83c404 68???????? 6804010000 ff15???????? }
		$sequence_1 = { c78534ffffff47657457 c78538ffffff696e646f c7853cffffff77546578 66c78540ffffff7457 }
		$sequence_2 = { c705????????55736572 c705????????33322e64 66c705????????6c6c c605????????00 }
		$sequence_3 = { eb02 33c9 c0e004 02c1 3423 c0c003 }
		$sequence_4 = { 8945fc 53 56 57 8d8534ffffff }
		$sequence_5 = { 55 8bec 8b450c 3d01020000 }
		$sequence_6 = { d1f9 68???????? 03c9 51 }
		$sequence_7 = { 68???????? 6a1a 68???????? 57 }
		$sequence_8 = { 6a02 68???????? 50 a3???????? }
		$sequence_9 = { 8bf0 56 ff15???????? 50 6a40 }
		$sequence_10 = { 56 ffd3 85c0 7403 83c608 8a06 }
		$sequence_11 = { 57 6a00 6880000000 6a04 6a00 6a01 6a04 }
		$sequence_12 = { ff15???????? 85c0 7405 83c004 }
		$sequence_13 = { 68???????? ff15???????? b8???????? 83c424 8d5002 668b08 }
		$sequence_14 = { e8???????? 68???????? 8d45f4 c745f4682f0110 50 e8???????? cc }
		$sequence_15 = { 83e61f c1f805 c1e606 c1e910 c0e107 8b1485d0a70110 }
		$sequence_16 = { 8d8d54ffffff 8d5101 90 8a01 }
		$sequence_17 = { 7414 8bc2 c1f805 83e21f c1e206 031485d0a70110 }
		$sequence_18 = { 8b048dd0a70110 4e 807d1300 8955e4 c64418050a }
		$sequence_19 = { 58 668986b8000000 668986be010000 c7466848960110 }
		$sequence_20 = { 2bc2 8bf0 d1fe 6a55 ff34f5e0470110 ff7508 e8???????? }
		$sequence_21 = { 41 84c0 75f9 2bce 741c 804415ec03 }

	condition:
		7 of them and filesize <612352
}