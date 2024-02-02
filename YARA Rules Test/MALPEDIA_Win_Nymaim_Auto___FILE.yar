rule MALPEDIA_Win_Nymaim_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "6fe09b40-4e7e-5960-9e2c-823057d831db"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nymaim"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.nymaim_auto.yar#L1-L281"
		license_url = "N/A"
		logic_hash = "0c0c73586cb65f92c931bae46a77127eb659bbbab03ac07a837f2712a17a227b"
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
		$sequence_0 = { 89d8 01c8 31d2 f7f7 }
		$sequence_1 = { 0f94c1 09c8 6bc064 09c0 }
		$sequence_2 = { 31d2 f7f7 92 31d2 }
		$sequence_3 = { 92 31d2 bf64000000 f7f7 }
		$sequence_4 = { c1e105 01c8 c1c307 30c3 }
		$sequence_5 = { 31c9 38f0 83d100 38d0 83d900 c1e105 }
		$sequence_6 = { c1eb13 331d???????? 31c3 c1e808 }
		$sequence_7 = { 00d3 8a16 301e 46 01fb }
		$sequence_8 = { 8b12 8b4d0c 8b5d18 8b1b 4f 31c0 fec2 }
		$sequence_9 = { 8b4e08 014e04 8b5e0c 015e08 }
		$sequence_10 = { c1e808 31c3 895e0c 89d8 }
		$sequence_11 = { f7e0 0fc8 01d0 894704 }
		$sequence_12 = { 8b06 c1e00b 3306 8b5604 0116 8b4e08 014e04 }
		$sequence_13 = { 53 56 57 83ec44 8b4508 8d0d2030d201 }
		$sequence_14 = { 4409df 4531d0 813d????????7147ed3a 0f84c06efdff 4421da 4431c7 c1c703 }
		$sequence_15 = { 0f84e0bffcff 443b642460 72b4 85ff 7439 837c246000 7628 }
		$sequence_16 = { 4531c9 488d442440 813d????????00e8e23a 0f84c1f7feff 31d2 48b9????????00000000 488903 }
		$sequence_17 = { 448915???????? 8b4548 89442448 488b8588000000 4889442440 488b8580000000 4889442438 }
		$sequence_18 = { 56 83ec28 8b450c 8b4d08 8d154e30d201 }
		$sequence_19 = { 55 89e5 83ec10 8b4508 8d0d3430d201 }
		$sequence_20 = { 83ec44 8b4508 8d0d2030d201 31d2 890c24 c744240400000000 }
		$sequence_21 = { 0f9e05???????? 4c89fa e8???????? 488d542440 488d8da0000000 890d???????? 8805???????? }
		$sequence_22 = { 4439a19c000000 0f8456bffcff 4439a194000000 48c705????????b2228979 0f8545bffcff 8b7108 458d6c2401 }
		$sequence_23 = { 31ed e8???????? 0fb7542430 488d4c2420 0fb7442432 4189d8 c1e209 }
		$sequence_24 = { 5b 5d c3 8b45f0 8b0c850440d201 }
		$sequence_25 = { 890424 894c2404 e8???????? 8d0d3430d201 }
		$sequence_26 = { 31c9 8b55f4 8b75ec 89723c c7424003000000 }
		$sequence_27 = { 4529d8 4489da 4801ca e8???????? 66813d????????a8c1 0f848bbe0000 44295b68 }
		$sequence_28 = { 31d2 890c24 c744240400000000 8945f4 8955f0 e8???????? 8d0d8630d201 }

	condition:
		7 of them and filesize <2375680
}