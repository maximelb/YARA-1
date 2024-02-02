rule MALPEDIA_Win_New_Ct_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "d2add3a1-140a-5bb8-b61a-9a3c6a02e7fc"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.new_ct"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.new_ct_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "d5abc4cf0e59662bf031f834b2da1a42e3067fae0164acdda49916fdb832ef21"
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
		$sequence_0 = { 894304 7532 8bfe 83c9ff 33c0 f2ae f7d1 }
		$sequence_1 = { 7472 3c42 746e 33c0 }
		$sequence_2 = { 81ec00040000 53 56 6888030000 33db }
		$sequence_3 = { 7605 b800000100 8b742418 03c7 8d8c24bc070000 8d44301c }
		$sequence_4 = { c644240537 c644240679 c6442407b9 7627 }
		$sequence_5 = { 8bcd 8933 2bce c6043e00 49 33c0 }
		$sequence_6 = { 50 6a00 6a00 68???????? 6a00 68???????? ff15???????? }
		$sequence_7 = { 33c0 8dbc24bd070000 c68424bc07000000 c68424bc0f000000 f3ab 66ab aa }
		$sequence_8 = { 740d 8d942414020000 52 ffd0 83c404 5f 5e }
		$sequence_9 = { 8bbc245c040000 c1e902 f3a5 8bc8 83e103 f3a4 }

	condition:
		7 of them and filesize <122880
}