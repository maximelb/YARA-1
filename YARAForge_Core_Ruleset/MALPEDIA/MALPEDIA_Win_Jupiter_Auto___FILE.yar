rule MALPEDIA_Win_Jupiter_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "36445056-0ae8-5be8-adc6-1a78abf2ec58"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jupiter"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.jupiter_auto.yar#L1-L112"
		license_url = "N/A"
		logic_hash = "f1911af4b4fd9bd3e29d91af55822bde97c05f4b517de64421dfe8b0d1264d94"
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
		$sequence_0 = { 8a4147 884104 8a4146 884105 8b4144 c1f808 884106 }
		$sequence_1 = { c605????????01 66c705????????0101 c605????????01 c605????????01 66c705????????0101 }
		$sequence_2 = { 8b4144 c1f808 884106 8a4144 884107 }
		$sequence_3 = { 884105 8b4144 c1f808 884106 8a4144 }
		$sequence_4 = { 50 6802000000 ff35???????? ff35???????? }
		$sequence_5 = { 66c705????????0101 c605????????01 c605????????01 c605????????01 }
		$sequence_6 = { 884105 8b4144 c1f808 884106 8a4144 884107 }
		$sequence_7 = { c1f808 884106 8a4144 884107 }
		$sequence_8 = { c605????????01 66c705????????0101 c605????????01 c605????????01 }
		$sequence_9 = { 884104 8a4146 884105 8b4144 }

	condition:
		7 of them and filesize <224112
}