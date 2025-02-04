rule MALPEDIA_Win_Hermes_Ransom_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "88136c82-87ab-5f89-8963-9afb9534a540"
		date = "2021-10-07"
		modified = "2021-10-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hermes_ransom"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.hermes_ransom_auto.yar#L1-L125"
		license_url = "N/A"
		logic_hash = "2bb9637b7e3ee9fcdd4e957eade001e8c8132e1b7c987ea6727ab44eda025915"
		score = 75
		quality = 75
		tags = "FILE"
		version = "1"
		tool = "yara-signator v0.6.0"
		signator_config = "callsandjumps;datarefs;binvalue"
		malpedia_rule_date = "20211007"
		malpedia_hash = "e5b790e0f888f252d49063a1251ca60ec2832535"
		malpedia_version = "20211008"
		malpedia_license = "CC BY-SA 4.0"
		malpedia_sharing = "TLP:WHITE"

	strings:
		$sequence_0 = { 59 59 8945e0 837ddc00 7506 837de000 7405 }
		$sequence_1 = { 8d45dc 50 ff75d8 8d8560ffffff 50 ff75e0 ff15???????? }
		$sequence_2 = { 33c0 668945e2 33c0 8945e4 8945e8 837df020 }
		$sequence_3 = { 6a00 8d85a4f9ffff 50 ff15???????? 5f 5e 8be5 }
		$sequence_4 = { 0fb7844504f7ffff 83f83b 741f 8b45d8 8b4df0 668b8c4d04f7ffff }
		$sequence_5 = { 8365c800 8365d000 c745b840420f00 8365e000 eb07 8b45e0 40 }
		$sequence_6 = { 59 6bc900 668981e8c34000 6a02 }
		$sequence_7 = { 59 59 6a0f 6a00 8d45bc 50 }
		$sequence_8 = { 8365f000 8b45f0 8945f8 837df800 7456 }
		$sequence_9 = { 83e002 7415 ff750c ff75fc e8???????? 59 }

	condition:
		7 of them and filesize <7192576
}