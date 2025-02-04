rule MALPEDIA_Win_Hotwax_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "34df7b39-b5de-5d0e-aea3-1ec834745896"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hotwax"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.hotwax_auto.yar#L1-L123"
		license_url = "N/A"
		logic_hash = "f7aa59232edd43ba4670389edd9f2f755cdf2f70e16334cd9db9000bdc1ab730"
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
		$sequence_0 = { 7e74 817d0063736de0 7528 48833d????????00 741e 488d0d5dee0000 }
		$sequence_1 = { 488bd7 ff15???????? 418d8770050000 4489bdcc040000 c745a400080000 8945a0 }
		$sequence_2 = { 4889842410030000 488bf9 488d8c2401020000 33d2 41b803010000 c684240002000000 }
		$sequence_3 = { 488bd9 4885c0 7479 488d0d7fe50000 483bc1 746d 488b8310010000 }
		$sequence_4 = { 4533db 488d9424f0000000 41b803010000 44895c2440 4c895c2448 ff15???????? 833d????????00 }
		$sequence_5 = { 486bd258 490394c1a04b0100 f6423880 742c }
		$sequence_6 = { 488bcb 488905???????? ff15???????? 488d1547d20000 488bcb 488905???????? ff15???????? }
		$sequence_7 = { cc 4c8d05f8530000 498bd4 488bcd e8???????? 85c0 }
		$sequence_8 = { 488b0d???????? eb7c 4c8d256a830000 488b0d???????? eb6c e8???????? }
		$sequence_9 = { 488d0d50bf0000 ba01000000 e8???????? 4c8d442440 }

	condition:
		7 of them and filesize <198656
}