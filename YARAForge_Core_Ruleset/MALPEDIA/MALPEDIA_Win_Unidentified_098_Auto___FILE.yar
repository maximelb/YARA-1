rule MALPEDIA_Win_Unidentified_098_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "8f47cad5-b04b-526a-bf75-a80f46978296"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_098"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.unidentified_098_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "5873ddf57107eab8629c385b87e703377b84a728d15aa8f227623b130059db6e"
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
		$sequence_0 = { c644247f00 e9???????? 41bdffffffff 4885db 7412 488b4310 483b4318 }
		$sequence_1 = { e9???????? 8d48bf 83f905 0f8716ffffff 83e837 c1e00c 89c6 }
		$sequence_2 = { 7eac 85c0 78a8 488b4318 31d2 4885c0 75ab }
		$sequence_3 = { f6c202 410f45c0 4883c102 01d2 668941fe 4939c9 75ce }
		$sequence_4 = { b801000000 4d85c0 7486 488b542450 4c89e1 e8???????? 85c0 }
		$sequence_5 = { ff15???????? 410fb61424 e9???????? 4c89f8 4829d8 4801c7 4d85ed }
		$sequence_6 = { 85d2 0f88d5000000 4c8d5904 4189d2 4c8d4910 83fa0f 7e33 }
		$sequence_7 = { 488d542440 4939d4 7411 4c89e1 8844242f e8???????? 0fb644242f }
		$sequence_8 = { 897c2450 41bd01000000 44894c2434 4889442458 e9???????? 488b03 4489442434 }
		$sequence_9 = { e9???????? 498b4610 493b4618 0f838d010000 0fb700 6683f8ff b900000000 }

	condition:
		7 of them and filesize <3345408
}