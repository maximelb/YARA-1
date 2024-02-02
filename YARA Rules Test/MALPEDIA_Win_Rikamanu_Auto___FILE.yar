rule MALPEDIA_Win_Rikamanu_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "08f5de79-f86c-592e-8a15-71782197d327"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rikamanu"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.rikamanu_auto.yar#L1-L297"
		license_url = "N/A"
		logic_hash = "3cf2bc6d93646710c8204bdc714006eac60fd0ca80947c5c7ae6ad8dcd343296"
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
		$sequence_0 = { e8???????? 6a14 ff15???????? a801 }
		$sequence_1 = { 50 ff15???????? 8b35???????? 3d80969800 }
		$sequence_2 = { 8b85e4fdffff 8d8dccfdffff 51 8d9588fdffff 52 8b95f0fdffff 53 }
		$sequence_3 = { 68???????? 51 c744241c6c714000 e8???????? 33d2 6a0c 8954240a }
		$sequence_4 = { 0fb6442404 8a4c240c 848821ae4000 751c 837c240800 740e 0fb70445faa64000 }
		$sequence_5 = { 83c42c 5f eb26 8d4508 8db62c724000 6a00 }
		$sequence_6 = { 8088????????10 8ac8 80c120 888820ad4000 eb1f 83f861 }
		$sequence_7 = { 0fbe05???????? 83e802 7413 83e806 7407 bf???????? eb0c }
		$sequence_8 = { 57 ff15???????? 33c0 40 ebcc }
		$sequence_9 = { eba1 8b85f0fdffff 6a04 8d95ecfdffff }
		$sequence_10 = { 51 68???????? 55 ffd3 bf???????? 83c9ff 33c0 }
		$sequence_11 = { 6a04 55 83e103 6a01 8d44246c }
		$sequence_12 = { 6a00 6a00 55 ffd7 55 }
		$sequence_13 = { 56 ff15???????? 8b842470020000 03f8 57 56 ff15???????? }
		$sequence_14 = { 8987709a2400 83c704 83ff28 72e6 5f }
		$sequence_15 = { 83c40c 33c0 6808020000 8d95f4fdffff 52 }
		$sequence_16 = { 8d34c570902400 833e00 7513 50 }
		$sequence_17 = { 8d4508 8db62c724000 6a00 50 ff36 e8???????? 59 }
		$sequence_18 = { 891d???????? 891d???????? ff15???????? 8d85f8feffff }
		$sequence_19 = { 7373 8bc8 8bf0 c1f905 83e61f 8d3c8de0b84000 c1e603 }
		$sequence_20 = { 391d???????? 0f849e000000 33c0 663bcb 0f95c0 }
		$sequence_21 = { 8bec 8b450c 56 beff000000 3bc6 7518 }
		$sequence_22 = { 8945e4 3d00010000 7d10 8a8c181d010000 888808972400 40 ebe6 }
		$sequence_23 = { 85c0 74c9 33c9 33c0 890d???????? bf???????? 890d???????? }
		$sequence_24 = { ebe3 80a0a0a6400000 40 41 41 3bc6 }
		$sequence_25 = { ff15???????? ff750c e8???????? 59 3bc3 }
		$sequence_26 = { 40 3acb 75f9 2bc2 8d95f8feffff }
		$sequence_27 = { 8b54240c 81fa80000000 7c0e 0fba25????????01 0f820b070000 57 }
		$sequence_28 = { 7457 68???????? 56 ffd5 85c0 744b 8a0e }
		$sequence_29 = { c1e106 8b0485383f4100 f644080401 7405 8b0408 5d }

	condition:
		7 of them and filesize <212992
}