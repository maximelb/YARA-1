rule MALPEDIA_Win_Suncrypt_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "93d1d1b0-e368-5e85-941c-a502b4af6a15"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.suncrypt"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.suncrypt_auto.yar#L1-L131"
		license_url = "N/A"
		logic_hash = "3fd8ca759efc6a63a6777db0d881129a01860e6b4243db4bd8968c844a421043"
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
		$sequence_0 = { ff15???????? 6a00 6a00 6a03 6a00 6a00 ff75b8 }
		$sequence_1 = { 8b8d60ffffff 8945c8 8b856cffffff 8945ac 8b8564ffffff 8945cc 8b855cffffff }
		$sequence_2 = { c645f84c c645f90e c645fa44 c645fb4c c645fc4c 8a45f4 c645fd00 }
		$sequence_3 = { 02ca 0fbec0 33c8 884c15ec 42 83fa11 72e8 }
		$sequence_4 = { 894dd0 034d98 8bf9 337dcc c1c70c 03c7 898534ffffff }
		$sequence_5 = { c3 8b07 0fb74f0e 8b4004 8b0488 894724 }
		$sequence_6 = { 8b7308 83c140 8b7da0 894df4 8b4df0 eb7e }
		$sequence_7 = { 8b45a8 0411 c645be00 83f00a 33d2 8845bd 8a45ac }
		$sequence_8 = { 660f6dec 660fefd8 660f6ccc 0f28a500feffff 0f1118 83c010 0f1007 }
		$sequence_9 = { 7324 8d0c10 2bf2 894df0 8b4df8 2bca }

	condition:
		7 of them and filesize <172032
}