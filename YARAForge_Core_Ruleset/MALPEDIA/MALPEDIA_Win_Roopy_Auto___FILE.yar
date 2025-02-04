rule MALPEDIA_Win_Roopy_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "18fd31da-7cad-5b5e-9e3e-b0b112556109"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.roopy"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.roopy_auto.yar#L1-L127"
		license_url = "N/A"
		logic_hash = "6efa923735d84ae0bbc14d021be45ac1298053ce08c8f542f6e92d8a3dac3a28"
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
		$sequence_0 = { 8d45d8 30c9 6631d2 e8???????? 6a00 8b45ec 8945c0 }
		$sequence_1 = { 89e5 8da42478fdffff 53 56 8945fc }
		$sequence_2 = { 68???????? 64ff30 648920 8d431c 8b55fc e8???????? 89d8 }
		$sequence_3 = { 85db 7403 8b40fc 3d04010000 0f8e91000000 89da }
		$sequence_4 = { e9???????? 8d8decfeffff 8d95a0fcffff b810010000 e8???????? e8???????? }
		$sequence_5 = { c745f800000000 c7859cfeffff00000000 c78598feffff00000000 c78594feffff00000000 c78578fdffff00000000 c7857cfdffff00000000 c78580fdffff00000000 }
		$sequence_6 = { e8???????? 6a00 a1???????? 8945d8 }
		$sequence_7 = { 30d2 e8???????? 6a00 8d45e4 e8???????? 6a00 a1???????? }
		$sequence_8 = { e8???????? 8d8d8cfcffff 6631d2 8d8570fbffff e8???????? 8d858cfcffff 30c9 }
		$sequence_9 = { 8b45dc 8d70ff f745e401000000 740d f745dcffffffff 0f856fffffff 8b45f0 }

	condition:
		7 of them and filesize <739328
}