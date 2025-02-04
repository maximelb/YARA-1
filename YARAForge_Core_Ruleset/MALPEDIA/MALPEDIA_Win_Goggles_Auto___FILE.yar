rule MALPEDIA_Win_Goggles_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "5a06c6e9-c0df-5eb2-9be8-0912ecacc960"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.goggles"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.goggles_auto.yar#L1-L119"
		license_url = "N/A"
		logic_hash = "6adf86a94e27e4da9bbef6eb899bde95be7c68b8b1a213561e769f61dd93d169"
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
		$sequence_0 = { c1fa02 83e23f 8a8a10400010 880c33 }
		$sequence_1 = { 51 e8???????? 8b1d???????? b941000000 33c0 }
		$sequence_2 = { 8d54247c 51 52 8d842488010000 68???????? 50 }
		$sequence_3 = { 6a01 51 ff15???????? 8b742430 8b542431 }
		$sequence_4 = { 53 ff15???????? 83c414 33c0 85ed }
		$sequence_5 = { 51 ff15???????? 83c9ff bf???????? 33c0 83c414 }
		$sequence_6 = { c744241002000000 8d8c2480020000 51 ff15???????? 8b442410 5f 5e }
		$sequence_7 = { ffd5 8bf0 8bc7 99 f77c242c 81ee???????? 0fbe8288410010 }
		$sequence_8 = { 2bd6 56 57 03ea ffd3 57 }
		$sequence_9 = { a0???????? 55 57 88442410 }

	condition:
		7 of them and filesize <57344
}