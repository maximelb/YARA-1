rule MALPEDIA_Win_Dispenserxfs_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "49bf9fde-27a7-5a52-b363-6d4c360f5198"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dispenserxfs"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.dispenserxfs_auto.yar#L1-L122"
		license_url = "N/A"
		logic_hash = "0ae97d732c7fee9f1fd4b6377f2a916fed962748494ab51169af7ce6e36e4229"
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
		$sequence_0 = { 8975c0 8975c4 8b35???????? 57 c745b430000000 c745b803000000 }
		$sequence_1 = { 68???????? e8???????? c7042410270000 ff15???????? 6a00 }
		$sequence_2 = { 6a02 ff15???????? 8bf0 83feff 74ef 8d85d4fdffff c785d4fdffff2c020000 }
		$sequence_3 = { 7c08 8d50ec e8???????? 57 ff15???????? }
		$sequence_4 = { 7451 33c9 33c0 8bd9 663b422e 731f 8b4230 }
		$sequence_5 = { 50 ffd6 53 6a03 58 50 8d8555ffffff }
		$sequence_6 = { 898de0feffff 89b5e4feffff 89b5e8feffff 89b5ecfeffff 89b5f0feffff 66899df6feffff }
		$sequence_7 = { 8945f0 0f823cffffff 8b4df4 8b45e4 }
		$sequence_8 = { 8bcf e8???????? 8d8548feffff 8bd3 50 8bcf }
		$sequence_9 = { 8d55c4 83c414 8bf2 8a02 42 }

	condition:
		7 of them and filesize <114688
}