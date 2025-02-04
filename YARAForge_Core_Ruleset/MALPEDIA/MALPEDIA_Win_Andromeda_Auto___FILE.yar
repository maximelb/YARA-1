rule MALPEDIA_Win_Andromeda_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "06e8a020-0fd4-5226-bdbc-44028f668872"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.andromeda"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.andromeda_auto.yar#L1-L309"
		license_url = "N/A"
		logic_hash = "b22436b7aba3ed23bef95d1f14e5fb10f193d85aea0247573fcd01991d4926fb"
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
		$sequence_0 = { 74cf ebcf 33c0 33db 33c9 33d2 8b7d10 }
		$sequence_1 = { 8b7508 33db 368a942900ffffff 02c2 020433 368ab42800ffffff }
		$sequence_2 = { 3688b42800ffffff 3688942b00ffffff 02d6 81e2ff000000 368a942a00ffffff 301439 }
		$sequence_3 = { 368a942a00ffffff 301439 41 3b4d14 75c3 }
		$sequence_4 = { 368ab42800ffffff 3688b42900ffffff 3688942800ffffff fec1 7408 }
		$sequence_5 = { 368a942800ffffff 02da 368ab42b00ffffff 3688b42800ffffff 3688942b00ffffff }
		$sequence_6 = { 8d7dfc b8fcfdfeff fd ab 2d04040404 e2f8 fc }
		$sequence_7 = { 8bec 81c400ffffff 60 b940000000 8d7dfc b8fcfdfeff }
		$sequence_8 = { 60 e8???????? 5d 81ed???????? 33c9 }
		$sequence_9 = { 3c41 0f9dc2 85ca 7404 0420 8806 }
		$sequence_10 = { 50 e8???????? 83c40c 6800000100 e8???????? }
		$sequence_11 = { 0fb64601 84c0 7905 0d00ffffff }
		$sequence_12 = { 8a06 33c9 3c5a 0f9ec1 33d2 }
		$sequence_13 = { 8d45d0 50 6a01 ff7508 }
		$sequence_14 = { ff7564 50 6aff 53 56 56 ffd7 }
		$sequence_15 = { 8b4dfc ff75e4 03c8 51 ff15???????? }
		$sequence_16 = { 68???????? ff75f4 e8???????? ff75f4 e8???????? 68???????? }
		$sequence_17 = { 6a00 6a06 6a01 6a02 e8???????? 8945f0 83f8ff }
		$sequence_18 = { e8???????? 6a06 ff75f8 e8???????? 8d45f4 }
		$sequence_19 = { ff75f0 e8???????? c7459c44000000 8945d4 }
		$sequence_20 = { e8???????? 83f800 7526 ff75f8 e8???????? 40 50 }
		$sequence_21 = { 83f8ff 7466 6a05 ff75f0 }
		$sequence_22 = { 6a05 ff75f0 e8???????? 83f8ff 7457 33c0 8d7d9c }
		$sequence_23 = { 8945fc 83f800 0f8476010000 6804010000 6a00 ff35???????? e8???????? }
		$sequence_24 = { 314508 ff560c 8b7d04 0bd8 81fbb599839e 7503 }
		$sequence_25 = { 31450c 315dfc ff5634 31450c 81c75853b2b3 }
		$sequence_26 = { 81ef21cfd856 2bd8 81ff1ac8cfd4 0f84ac000000 }
		$sequence_27 = { 0f8418010000 8365f000 6850020000 6a08 ff750c ff5604 }
		$sequence_28 = { ff560c 0faff8 8b456c 8b00 89456c ff5638 0fafd8 }
		$sequence_29 = { 3d00010000 7322 888405ecfeffff ff560c }
		$sequence_30 = { 81fb15af295e 0f85ae000000 81ef52eceb06 ff5634 8bd8 81cb15af295e 8b45fc }
		$sequence_31 = { ff5634 8b4d0c 81c951dbc951 0fafc1 89450c }

	condition:
		7 of them and filesize <204800
}