rule MALPEDIA_Win_Sysraw_Stealer_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "a9e810a6-264f-569e-b3d3-a9931864293b"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sysraw_stealer"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.sysraw_stealer_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "a25f6b3ba819f069101fb648f9516e51ed0f5298199445e1b66fa7cef9e138d8"
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
		$sequence_0 = { 50 8d9504ffffff 51 8d8508ffffff 52 8d8d0cffffff }
		$sequence_1 = { ffd6 a1???????? ba???????? 8b4814 c1e102 8bf9 8b480c }
		$sequence_2 = { 51 89558c ffd7 8b558c f7d8 1bc0 f7d8 }
		$sequence_3 = { 7507 c745ec01000000 8b4514 8b7de8 2bc7 6800000040 }
		$sequence_4 = { ff15???????? 8b4dc0 894dd4 8d55c4 52 }
		$sequence_5 = { c7400807000000 c7400c0f000000 c740101f000000 c740143f000000 c740187f000000 }
		$sequence_6 = { 89bde0feffff ffd6 8b3d???????? 50 }
		$sequence_7 = { c7420485ae67bb 8b4590 c7400872f36e3c 8b4d90 c7410c3af54fa5 }
		$sequence_8 = { 53 56 57 8bd0 8bf1 8bf8 8bd9 }
		$sequence_9 = { 8975c8 8975b8 8975a8 ff15???????? 8b45d0 8975cc 50 }

	condition:
		7 of them and filesize <1540096
}