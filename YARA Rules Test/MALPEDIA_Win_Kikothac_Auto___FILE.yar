rule MALPEDIA_Win_Kikothac_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "48840edd-1eda-587e-96d1-699222be4802"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kikothac"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.kikothac_auto.yar#L1-L120"
		license_url = "N/A"
		logic_hash = "ddecb618114edd432a6ac40a5ecfd59b3208358e4b28a6940c432c46b4921216"
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
		$sequence_0 = { 85c0 7516 8b86942f4100 b301 85c0 740a }
		$sequence_1 = { 50 ff15???????? a3???????? 3bc3 7507 32c0 5b }
		$sequence_2 = { 56 33f6 57 8975fc ffd3 85c0 }
		$sequence_3 = { c60424cd 8d642438 e9???????? c64424046e 895500 9c 6689742408 }
		$sequence_4 = { c1c80a e9???????? 66894500 9c }
		$sequence_5 = { 8b441604 51 50 ff15???????? 85c0 7516 }
		$sequence_6 = { 51 68102ba40e ff3424 9c 8f442438 }
		$sequence_7 = { 6820040000 57 57 57 }
		$sequence_8 = { 60 f6c356 c6442404ab 20d0 }
		$sequence_9 = { e9???????? 8b7c242c 66c70424dc83 98 9f 8b442430 660fbeeb }

	condition:
		7 of them and filesize <581632
}