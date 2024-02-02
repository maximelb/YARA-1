rule MALPEDIA_Win_Soul_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "ea0bc590-52b0-5914-b399-85653bff4505"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.soul"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.soul_auto.yar#L1-L234"
		license_url = "N/A"
		logic_hash = "192d2467d64d6ffcab9581013b65d7e42a7f1082991c14dd63a3ef2c42177610"
		score = 75
		quality = 73
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
		$sequence_0 = { 83c404 33f6 897304 8b4304 }
		$sequence_1 = { 897304 8b4304 5f 5e 5b }
		$sequence_2 = { 40 803800 75f8 c745fc00000000 90 }
		$sequence_3 = { 75f8 803e00 8bc6 7409 90 fe08 40 }
		$sequence_4 = { d3e2 8515???????? 7405 e8???????? }
		$sequence_5 = { 8b03 8b36 50 e8???????? 8bf8 }
		$sequence_6 = { 5d c3 57 eb05 85f6 }
		$sequence_7 = { ff25???????? ff25???????? ff25???????? ff25???????? 48895c2408 4889742410 57 }
		$sequence_8 = { ff45fc 85f6 7506 837dfc04 7cda }
		$sequence_9 = { c745fc00000000 8da42400000000 8b4df8 51 }
		$sequence_10 = { e9???????? 8b531c c1e002 8bc8 }
		$sequence_11 = { 6644896c2438 48837f1808 7319 4c8b4710 49ffc0 4d03c0 }
		$sequence_12 = { 4983fc08 7208 498bcd e8???????? b801000000 488b8db0010000 4833cc }
		$sequence_13 = { 7475 453bcc 7370 488b5330 4c8b5318 488b7338 }
		$sequence_14 = { 48895c2420 ff16 85c0 0f85f7000000 488b442420 4885c0 0f84e4000000 }
		$sequence_15 = { 4c8bac2470020000 4c8ba42478020000 488bb424a8020000 488b9c2498020000 488bac24a0020000 488b8c2460020000 4833cc }
		$sequence_16 = { 8bc1 c1e805 478d541201 662bc8 }
		$sequence_17 = { 0f8889000000 7e74 817d0063736de0 7528 48833d????????00 741e 488d0d49ad0000 }
		$sequence_18 = { 3d06010000 7309 4585ff 0f84bd020000 85c0 0f8410040000 458bc5 }
		$sequence_19 = { 4883c302 85c0 75ed 85d2 7416 4885ff }
		$sequence_20 = { 488bcf ff15???????? 400fb6de 85c0 be00000000 0f44de 48837c247808 }
		$sequence_21 = { 488d4de0 e8???????? 90 4c8d056e310200 488bd0 488d4db8 }
		$sequence_22 = { 41d3ed 83ff20 7321 85f6 0f84d30c0000 410fb60424 }

	condition:
		7 of them and filesize <1400832
}