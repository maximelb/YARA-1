rule MALPEDIA_Win_Shareip_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "1e2be420-f7e3-538b-a25d-892f460d058e"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.shareip"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.shareip_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "22b55834a3d563030497f1fde153bdd0a045ee32bc87427f1091c9e8cd08bbb9"
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
		$sequence_0 = { 8d8534feffff e9???????? 8d8da8feffff e9???????? 8d8558feffff e9???????? 8d8544ffffff }
		$sequence_1 = { 894638 85c9 740f 8bd0 8d4900 8a01 8802 }
		$sequence_2 = { 8a8064954500 08443b1d 0fb64601 47 3bf8 76ea 8b7d08 }
		$sequence_3 = { 395c2444 7426 3bc3 7422 50 e8???????? 8b4c2444 }
		$sequence_4 = { 834dfcff 894614 83c40c 8d45e4 50 e8???????? 8b07 }
		$sequence_5 = { 8b44241c 50 8d8c24a0010000 51 53 53 53 }
		$sequence_6 = { 55 8d4c245c e8???????? 8bd8 895c2414 83fbff 7541 }
		$sequence_7 = { 837de800 7e50 8b03 8b4804 0fb7541930 8d0419 8b4828 }
		$sequence_8 = { 8b9a80f34400 33f3 8b4538 33db 8b553c 33c6 33d6 }
		$sequence_9 = { 33c0 eb05 1bc0 83d8ff 3bc3 7506 895c2418 }

	condition:
		7 of them and filesize <811008
}