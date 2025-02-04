rule MALPEDIA_Win_Underminer_Ek_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "2ed43350-f854-5062-8561-cad10f7ea1be"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.underminer_ek"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.underminer_ek_auto.yar#L1-L176"
		license_url = "N/A"
		logic_hash = "39ca462c5e03509c03f5a77251b93a3d7053742d5a8b5f784c7649f495781800"
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
		$sequence_0 = { 68d040fa7e 687853fa7e ff742418 ffd0 85c0 }
		$sequence_1 = { 684c52fa7e 53 ff15???????? 8bf8 85ff 7476 }
		$sequence_2 = { 1bc0 23c1 83c008 5d c3 8b04c5e48f4200 5d }
		$sequence_3 = { 884d17 0f8482000000 f6451701 7445 8b4d10 }
		$sequence_4 = { 68e452fa7e 53 e8???????? 68ef030000 8d4311 68d233fa7e 50 }
		$sequence_5 = { 51 e8???????? 83c408 8b55dc c745f000000000 }
		$sequence_6 = { 8b49fc 83c223 2bc1 83c0fc 83f81f 0f87b0130000 52 }
		$sequence_7 = { f30f7e4110 660fd645f0 c7411000000000 c741140f000000 c60100 837df410 0f4345e0 }
		$sequence_8 = { 8b4d0c c60102 ebe9 3cbf 770b }
		$sequence_9 = { 0fb6d1 f604557aa3420001 740f 8b45f0 8b8094000000 }
		$sequence_10 = { 8bdf 46 ff4d0c c1e010 0fbf16 03d8 8d841a00800000 }
		$sequence_11 = { 8b34bd6cc64200 eb07 8b34bd38c64200 53 46 }
		$sequence_12 = { 89451c 7548 803ee8 7559 8b4601 }
		$sequence_13 = { 6a00 51 50 57 ff15???????? ff75d8 }
		$sequence_14 = { 49 807dff00 8955ec 894df4 8b0485582c4300 }
		$sequence_15 = { 5b c9 c3 ff742408 8b442408 ff10 c3 }

	condition:
		7 of them and filesize <466944
}