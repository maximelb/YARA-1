rule MALPEDIA_Win_Beatdrop_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "b3142cf9-1fa2-58bd-9f49-d91bf2cf24b1"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.beatdrop"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.beatdrop_auto.yar#L1-L124"
		license_url = "N/A"
		logic_hash = "171eb025ab1384be132ed16b4793a3dd033a6c86c2974208fbbb41bec30e49af"
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
		$sequence_0 = { e8???????? 4c89f1 e8???????? 4c8d0571aaffff }
		$sequence_1 = { 4733bc84000c0000 4189c1 4589f0 41c1e918 4433bebc000000 41c1e810 }
		$sequence_2 = { 0fb6c0 413394b5000c0000 c1eb18 33552c 4133948500040000 4489c0 }
		$sequence_3 = { 4189d3 0fb6ce 41c1e818 41c1eb18 478b4c8500 4589f8 438b5c9d00 }
		$sequence_4 = { 4189d3 c1ea18 41c1eb10 335e78 418b1494 4333948c000c0000 450fb6db }
		$sequence_5 = { 4489cb 334610 41c1eb18 450fb6d2 0fb6df 4333849400040000 }
		$sequence_6 = { 41c1e818 4189cf 4489d1 478b0484 4733848c000c0000 4589d1 }
		$sequence_7 = { 488b3d???????? 89d8 4989ce 4989d5 488b0d???????? 4c89c6 4c89cd }
		$sequence_8 = { 498344241010 eb11 498d4c2408 e8???????? eb05 49ff442418 }
		$sequence_9 = { e8???????? 4885c0 752c 4c8b4b08 41b813000000 }

	condition:
		7 of them and filesize <584704
}