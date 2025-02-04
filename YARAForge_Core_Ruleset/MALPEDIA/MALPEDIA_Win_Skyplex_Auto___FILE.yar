rule MALPEDIA_Win_Skyplex_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "3d9ea458-10c2-53d2-a125-12c3c77bb27b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.skyplex"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.skyplex_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "d0704b78b2354a7199559252cd2d4f927c47dc758745bd631528996f74a24c6c"
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
		$sequence_0 = { 6a00 ff15???????? 898508fcffff ff15???????? }
		$sequence_1 = { c3 8bff 56 57 33ff 8db704984100 ff36 }
		$sequence_2 = { 59 e9???????? 8b36 8bce c1f905 8b0c8dc0af4100 }
		$sequence_3 = { 8b7d08 8bc7 c1f805 8d3485c0af4100 8b06 }
		$sequence_4 = { 50 e8???????? 50 8b4df8 8b11 8b45f8 50 }
		$sequence_5 = { c785b8f6ffff684c4100 c785bcf6ffffb04c4100 ff15???????? 50 e8???????? 83c404 }
		$sequence_6 = { 33d2 b9???????? 57 8bc2 c1f805 8b0485c0af4100 8bfa }
		$sequence_7 = { 83bdf0feffff03 7327 8b85f0feffff 8b0c857c904100 51 }
		$sequence_8 = { 66898c4558f7ffff 8d9558f7ffff 52 8d8540fbffff 50 }
		$sequence_9 = { 6a01 ff15???????? c78544f6ffff01000000 eb0f 8b8d44f6ffff 83c101 898d44f6ffff }

	condition:
		7 of them and filesize <262144
}