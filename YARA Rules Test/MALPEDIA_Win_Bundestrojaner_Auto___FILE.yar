rule MALPEDIA_Win_Bundestrojaner_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "f8dcad82-5285-5492-8b50-3aca915a7d86"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bundestrojaner"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.bundestrojaner_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "14c57bb4c31bed67bf98bb86f0286f3377181b876957cd1f8d67f51314c230ea"
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
		$sequence_0 = { 894c2414 33ff 85c0 897c2410 741f 47 d1f8 }
		$sequence_1 = { 3bc8 7cc3 8b5608 8b4e70 d9442460 42 897e04 }
		$sequence_2 = { 50 8d55fc 51 52 e8???????? 8b87c0000000 b980000000 }
		$sequence_3 = { 56 8b742438 57 8b7c242c 8bc7 c744241000000000 }
		$sequence_4 = { 8b4e34 8d1482 52 50 8b460c 50 51 }
		$sequence_5 = { 83c420 8b5104 85d2 0f95c2 83f806 885114 }
		$sequence_6 = { d9c9 d959fc 3b5610 7cdb ddd8 8b4610 8b5c2418 }
		$sequence_7 = { 75fb 83fe0b 7e15 8b442414 50 8b08 c7411406000000 }
		$sequence_8 = { 8d54241c 89442420 8b44240c 6a00 52 6a00 }
		$sequence_9 = { dd1c24 e8???????? 83c408 e8???????? 85c0 8944241c 7d04 }

	condition:
		7 of them and filesize <729088
}