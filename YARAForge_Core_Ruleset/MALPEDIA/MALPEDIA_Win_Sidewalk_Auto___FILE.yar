rule MALPEDIA_Win_Sidewalk_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "14b78b08-c08d-56d8-91d9-454c97efb0a9"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sidewalk"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.sidewalk_auto.yar#L1-L133"
		license_url = "N/A"
		logic_hash = "db7fd110ccdf76bd73169627fa283b7d029f717432de6e469dcea6c6c2ec5ed7"
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
		$sequence_0 = { 4403e8 4133db 418bcd c1c307 }
		$sequence_1 = { 0bc8 41890c10 488d5204 4983e901 75d4 }
		$sequence_2 = { 33c3 c1c207 c1c00c 4403c8 4533d1 }
		$sequence_3 = { 488b05???????? 83780c00 7405 e8???????? }
		$sequence_4 = { 488d040a 483bc6 7ce2 4883c640 }
		$sequence_5 = { 8bc2 33c6 c1c010 4403d8 4133db }
		$sequence_6 = { 750e 488bcf ff15???????? 4885c0 }
		$sequence_7 = { c1c610 4433f2 c1c710 4403df 41c1c610 4503e6 }
		$sequence_8 = { 41c1c610 4503e6 4403cb 4533d1 4403ee 41c1c210 418bc3 }
		$sequence_9 = { 884202 884a03 4183f810 7ccc }
		$sequence_10 = { 0fb642fe c1e108 0bc8 41890c10 }
		$sequence_11 = { ff15???????? 4885c0 750e 488bcf }
		$sequence_12 = { 8a040f 3201 41880408 48ffc1 }

	condition:
		7 of them and filesize <237568
}