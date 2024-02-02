rule MALPEDIA_Win_Htran_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "640e7099-e79d-52c5-9d59-7736988066fb"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.htran"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.htran_auto.yar#L1-L118"
		license_url = "N/A"
		logic_hash = "572147b50538386d2f3141669299b284d93907b072e98ae962e15d37b04a8bad"
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
		$sequence_0 = { 6a00 8d8434f0a20000 55 50 53 }
		$sequence_1 = { 8bc8 83e103 f3a4 8b4c2462 }
		$sequence_2 = { 83c408 a1???????? 85c0 7405 }
		$sequence_3 = { 50 51 ffd3 85c0 7d28 bf???????? 83c9ff }
		$sequence_4 = { ffd5 8bf8 8b442440 50 ff15???????? 50 53 }
		$sequence_5 = { 8b8424e0420100 33c9 894c2414 53 8b10 }
		$sequence_6 = { 8816 46 eb0f 0fb6d2 f682c1c3400004 }
		$sequence_7 = { 89442410 c705????????03000000 8b442410 8b0d???????? 49 743a }
		$sequence_8 = { c20400 8b542404 8b0d???????? 3915???????? 56 b8???????? }
		$sequence_9 = { 899424e8010000 89b424e8000000 899424e4000000 33c0 8d8c24e8000000 }

	condition:
		7 of them and filesize <114688
}