rule MALPEDIA_Win_Whitebird_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "18c8f315-82f9-5211-979b-cd91dd0f89f6"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.whitebird"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.whitebird_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "9614af5c53f8ac08af22eb37dac785c96bbf80265ac7367d1874d42f77f5a2ec"
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
		$sequence_0 = { 8a4302 84c0 7408 3c01 7404 }
		$sequence_1 = { 8a4301 3c01 7404 3c02 }
		$sequence_2 = { 8a4302 84c0 7408 3c01 7404 3c02 }
		$sequence_3 = { eb09 80f92f 0f95c1 80c13f }
		$sequence_4 = { 8a4302 84c0 7408 3c01 }
		$sequence_5 = { ffb5c0fbffff 8930 ff15???????? 01b5c4fbffff ff8dbcfbffff 75dd ffb5c0fbffff }
		$sequence_6 = { ff15???????? 488bcb ff15???????? b801000000 488b8c2480040000 4833cc e8???????? }
		$sequence_7 = { 8b4d08 836d0808 d3e3 095d0c 46 3bf7 72ec }
		$sequence_8 = { 488d542468 498bcd ffd0 3bc3 8bd0 7c28 8b442478 }
		$sequence_9 = { 4833c4 4889842450250000 418bf9 458be0 448bf2 89542454 4c8be9 }

	condition:
		7 of them and filesize <139264
}