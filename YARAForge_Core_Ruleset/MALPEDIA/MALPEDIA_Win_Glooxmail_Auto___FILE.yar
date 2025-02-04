rule MALPEDIA_Win_Glooxmail_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "9fc08289-2c15-5e6a-a020-5e3374a227b0"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.glooxmail"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.glooxmail_auto.yar#L1-L130"
		license_url = "N/A"
		logic_hash = "3f9c49f2bcdac7dc8871b003117cb741dd79fa085062dcf8b6237e67caf4dc2a"
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
		$sequence_0 = { 834dfcff 6a00 53 8d4d38 }
		$sequence_1 = { e8???????? 899c2460800000 895c240c 895c2410 68ff7f0000 8d442451 53 }
		$sequence_2 = { 57 8d8c24f4030000 e8???????? 8d8c2418080000 51 8d8c24f4030000 c684246408000030 }
		$sequence_3 = { 0f840c000000 8365f0fe 8d4dc4 e9???????? c3 8b542408 8d420c }
		$sequence_4 = { b8???????? e9???????? 8d4d00 e9???????? 8d4dd4 e9???????? 8d4dd4 }
		$sequence_5 = { 59 c3 8b85acf7ffff 2500000400 0f8415000000 81a5acf7fffffffffbff }
		$sequence_6 = { e8???????? 8bd9 895de8 8d7b04 8d7308 c703???????? c707???????? }
		$sequence_7 = { c700???????? c74004???????? c74008???????? c7400cb04a4400 c74010bc4a4400 c74014c84a4400 c74018d44a4400 }
		$sequence_8 = { 8d8d2cffffff e9???????? c3 8b542408 8d82acfbffff 8b8aa8fbffff 33c8 }
		$sequence_9 = { ff750c 8b01 ff5044 84c0 7504 b301 eb02 }

	condition:
		7 of them and filesize <761856
}