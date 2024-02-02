rule MALPEDIA_Win_Torisma_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "a1ed0c86-448e-5725-a3d9-4e9a8d06915c"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.torisma"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.torisma_auto.yar#L1-L132"
		license_url = "N/A"
		logic_hash = "5ec5e797b8010193d7caa6926dd920962119b17c8339298b3be41306fc75b6f7"
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
		$sequence_0 = { e8???????? 3d83490000 7507 b883490000 }
		$sequence_1 = { 7402 eb05 e9???????? b833280000 }
		$sequence_2 = { e8???????? 3d514b0000 7504 33c0 }
		$sequence_3 = { 488b4c2470 e8???????? 89442458 817c245870100000 }
		$sequence_4 = { 030cb540ef0110 eb02 8bca f641247f 759b }
		$sequence_5 = { b833280000 5f 5e 8be5 5d }
		$sequence_6 = { 8b55fc 833a00 740c 8b45fc 8b08 51 }
		$sequence_7 = { 488d442440 488bf8 33c0 b928000000 }
		$sequence_8 = { 8b4c2430 488b542450 89048a ebb5 }
		$sequence_9 = { 817dd833280000 7507 c745f433280000 eb07 c745f433280000 }
		$sequence_10 = { c68424e1000000e9 c68424e2000000c3 c68424e3000000a5 c68424e400000090 }
		$sequence_11 = { ff2495c0d50010 8bc7 ba03000000 83e904 720c 83e003 }
		$sequence_12 = { c1e006 0b442414 88442410 8b442440 }

	condition:
		7 of them and filesize <322560
}