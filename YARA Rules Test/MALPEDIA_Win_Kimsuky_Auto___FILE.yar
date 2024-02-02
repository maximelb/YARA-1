rule MALPEDIA_Win_Kimsuky_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "161d56f8-b6bc-5eb6-924b-1d343e294025"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kimsuky"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.kimsuky_auto.yar#L1-L285"
		license_url = "N/A"
		logic_hash = "9e58434bf421de4759f7d578f12345202af7c8ac65503745224655e4e4de3bf9"
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
		$sequence_0 = { 50 ffd6 8bd8 85db 7510 5e }
		$sequence_1 = { 6a00 6800f70484 6a00 6a00 68???????? 8d85e4fbffff 50 }
		$sequence_2 = { 8d85ecfbffff 50 8d85f8feffff 50 8d85f4fdffff }
		$sequence_3 = { ffd7 a3???????? 8d85ccf3ffff 50 56 ffd7 }
		$sequence_4 = { 7503 56 eb18 6a00 6a00 6a00 }
		$sequence_5 = { 85c0 7423 6a00 8d85f0feffff 50 68???????? }
		$sequence_6 = { b9???????? e8???????? 8d85f8feffff 50 6a00 6a00 6a1a }
		$sequence_7 = { eb06 ff15???????? 85c0 7421 }
		$sequence_8 = { ff15???????? 85c0 7516 ff15???????? 8bd8 e8???????? }
		$sequence_9 = { 4156 4157 4883ec40 48896c2470 4889742438 4533ff 4c89642428 }
		$sequence_10 = { ebdb 65488b042560000000 48897c2430 48896c2460 }
		$sequence_11 = { 0f857affffff 4c8b7c2460 4c8b6c2420 4c8b642428 488b7c2430 488b742438 488b6c2470 }
		$sequence_12 = { 498bce 418d5001 ffd3 488bc3 4883c440 415f }
		$sequence_13 = { 488b742438 488b6c2470 4d8bc6 4d2b4730 }
		$sequence_14 = { 0f8540feffff 488b6c2460 4c637d3c 33c9 41b800300000 4c03fd }
		$sequence_15 = { 4533ff 4c89642428 4c896c2420 33f6 4533ed 4533e4 }
		$sequence_16 = { 85c0 0f94c1 85c9 0f8494020000 }
		$sequence_17 = { 4c89642430 c744242880000000 c744242002000000 4533c9 4533c0 }
		$sequence_18 = { 85c0 0f8432020000 8b7590 660f1f440000 }
		$sequence_19 = { 8b9590000000 0395d8000000 0395b8000000 8bbda0010000 8d4702 03c2 89442450 }
		$sequence_20 = { 8b4c2468 c6043900 803f00 740d }
		$sequence_21 = { 488d8a38000000 e9???????? 488d8a28010000 e9???????? }
		$sequence_22 = { 85c0 7464 c7453038000000 33c0 }
		$sequence_23 = { 85c0 7471 895c2468 8d4801 }
		$sequence_24 = { 83f809 8d7340 7405 be20000000 c68424a000000000 }
		$sequence_25 = { 668945c4 8b05???????? 8945d8 0fb705???????? }
		$sequence_26 = { 668945ea 6644896dec 4c8d45c0 488d1563c20400 }
		$sequence_27 = { 66894507 884509 895d0b 85ff }
		$sequence_28 = { 668945dc 448d62ff e8???????? 33db }
		$sequence_29 = { 668945b0 488d4db0 e8???????? 488d442450 }
		$sequence_30 = { 668945e8 488bc3 7203 488b03 }

	condition:
		7 of them and filesize <1021952
}