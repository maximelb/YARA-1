rule MALPEDIA_Win_Combos_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1f17e5a0-ef31-5686-bb42-b8b65987952e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.combos"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.combos_auto.yar#L1-L121"
		license_url = "N/A"
		logic_hash = "037e9ec47814518fd1ef388425768f46eed22a270b66cf4ee1793ac0871a3237"
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
		$sequence_0 = { 57 68ffff1f00 8d45e4 50 }
		$sequence_1 = { be???????? 8b4c2410 8bfb 8bc1 6a01 c1e902 f3a5 }
		$sequence_2 = { 57 57 53 56 8b8dd8feffff }
		$sequence_3 = { 89bdd4feffff 897dfc 8b4508 50 }
		$sequence_4 = { 8d054c160110 83780800 754e b741 b35a b620 }
		$sequence_5 = { 53 8d44240c 55 56 89442410 57 c744241000000000 }
		$sequence_6 = { 740e 50 ff15???????? 830d????????ff c3 8b442404 c74050b0110110 }
		$sequence_7 = { 7514 8b442408 8b4c2410 5e }
		$sequence_8 = { 0bc5 33c1 8b848600ffffff 0bc7 5f 5e 5d }
		$sequence_9 = { 83ec08 55 56 8b742414 85f6 0f8412010000 }

	condition:
		7 of them and filesize <163840
}