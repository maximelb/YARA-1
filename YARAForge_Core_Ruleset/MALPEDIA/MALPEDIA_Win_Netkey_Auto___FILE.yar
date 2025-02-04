rule MALPEDIA_Win_Netkey_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "76292b9d-6066-51f2-940c-21859c007253"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.netkey"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.netkey_auto.yar#L1-L129"
		license_url = "N/A"
		logic_hash = "0ca26012e9d146d53c4ba2a355f1655827a5f40d6a52c39d2206e16c6e4d6ec5"
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
		$sequence_0 = { 83c40c 83c208 8bca 81e11f000080 7905 49 }
		$sequence_1 = { 83e03f c1ff06 6bd830 8b04bda8214400 f644032801 7444 837c0318ff }
		$sequence_2 = { 81ec98010000 a1???????? 33c4 89842494010000 b9???????? e8???????? 8d0424 }
		$sequence_3 = { 83c404 85ff 0f84c7000000 57 53 6a00 56 }
		$sequence_4 = { 8bc2 8955fc 99 83e21f 8d0c02 c1f905 }
		$sequence_5 = { 6a01 8845e8 8d45e8 57 50 c745c801000000 e8???????? }
		$sequence_6 = { 42 668955ec e8???????? 99 be3b000000 f7fe }
		$sequence_7 = { 780d b801000000 5f 5e 5b 59 }
		$sequence_8 = { 83c8ff eb07 8b04cd8c6a4300 5f 5e 5b 8be5 }
		$sequence_9 = { 8d8fd8000000 e8???????? 0f1005???????? 8d95f0fbffff 8d4a01 0f1185f0fbffff }

	condition:
		7 of them and filesize <606208
}