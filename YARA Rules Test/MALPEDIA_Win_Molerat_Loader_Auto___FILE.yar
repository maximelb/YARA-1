rule MALPEDIA_Win_Molerat_Loader_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6649c702-0322-5056-bfb1-5bb59b0b659a"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.molerat_loader"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.molerat_loader_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "9e4d3c42bd1eb8db57dd9c545f5a5ad86009e39e60f601bd2428ef16d555d86e"
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
		$sequence_0 = { 83c40c 68???????? 50 8d8dc0fdffff 51 c645fc18 }
		$sequence_1 = { 68???????? e8???????? 8b4d58 e8???????? e9???????? 68???????? e8???????? }
		$sequence_2 = { 7d0d 8a4c181c 888860464400 40 ebe9 33c0 8945e4 }
		$sequence_3 = { 83c40c 8d957cffffff 52 50 8d85d0fdffff 50 c645fc3a }
		$sequence_4 = { 50 8b4204 ffd0 8d4d0c e8???????? 8d8da0fdffff c645fc07 }
		$sequence_5 = { 7f0a 8b08 8b11 50 8b4204 ffd0 c645fc69 }
		$sequence_6 = { 8b95ecfeffff 8995e8feffff c745fc01000000 b8???????? c3 c645fc00 }
		$sequence_7 = { 8d4c247c c68424d800000002 e8???????? 8d54247c 52 c7842480000000e8c64300 e8???????? }
		$sequence_8 = { 83c010 83c404 8945e8 68???????? 68???????? 8d4de4 51 }
		$sequence_9 = { 8d8d74ffffff c645fc03 e8???????? 8d8574ffffff 50 8d4d5c 68???????? }

	condition:
		7 of them and filesize <688128
}