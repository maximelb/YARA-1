rule MALPEDIA_Win_Arik_Keylogger_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "85657a12-5353-59c6-96c2-3cad36ac8818"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.arik_keylogger"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.arik_keylogger_auto.yar#L1-L134"
		license_url = "N/A"
		logic_hash = "f00c46b1c19068a9b1d9eb23a1cbe0ffd294a87bebb3732b435039b4cebfac37"
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
		$sequence_0 = { 8b45fc f7402801000000 755a 8b45fc 8b55fc 8b12 ff927c040000 }
		$sequence_1 = { dd5df8 e8???????? ba???????? 8d45c0 e8???????? 58 85c0 }
		$sequence_2 = { 8b804c010000 e8???????? e8???????? 84c0 7424 8b45f8 8b804c010000 }
		$sequence_3 = { b003 e9???????? b004 e9???????? b005 e9???????? b006 }
		$sequence_4 = { e8???????? 8b45ec 8908 8b45f0 8b08 034df4 7105 }
		$sequence_5 = { e8???????? 50 85c0 0f8528010000 8b45b8 e8???????? c745b400000000 }
		$sequence_6 = { eb16 8b45fc 8b4004 0d00001000 0d00002000 8b55fc 894204 }
		$sequence_7 = { f3a5 8b45f4 83b8d002000000 7432 8b45f8 50 8b4518 }
		$sequence_8 = { 8b45f4 e8???????? 8b45f4 83c024 8a4d08 8d55ec e8???????? }
		$sequence_9 = { 8d45d4 e8???????? c745d400000000 8d45d0 e8???????? c745d000000000 8b4614 }

	condition:
		7 of them and filesize <4947968
}