rule MALPEDIA_Win_Tiny_Turla_Auto___FILE
{
	meta:
		description = "autogenerated rule brought to you by yara-signator"
		author = "Felix Bilstein - yara-signator at cocacoding dot com"
		id = "03ecfc31-50be-55ad-b8ea-3661b97e212f"
		date = "2023-12-06"
		modified = "2023-12-08"
		reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tiny_turla"
		source_url = "https://github.com/malpedia/signator-rules//blob/fbacfc09b84d53d410385e66a8e56f25016c588a/rules/win.tiny_turla_auto.yar#L1-L115"
		license_url = "N/A"
		logic_hash = "78e001a1d7d03185ba347a5f9852159024940a515be46a1732bb8c9313d9ab24"
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
		$sequence_0 = { 4533ed 8b7d7f 488b742450 8d4f02 }
		$sequence_1 = { 0f84f8000000 33d2 488d4da0 448d4268 }
		$sequence_2 = { 488b16 8bd8 894567 41b906000200 488d4577 4533c0 }
		$sequence_3 = { 48895c2420 ff15???????? 85c0 750e 488bce }
		$sequence_4 = { ff15???????? 85c0 7516 4533ed }
		$sequence_5 = { 440fb62a 44886d6f 44894d7f 4585c0 7540 }
		$sequence_6 = { ff15???????? b005 e9???????? 8b0f 85c9 }
		$sequence_7 = { 418d511b ff15???????? 488bcb 85c0 0f849b000000 8b7d50 }
		$sequence_8 = { 48c74308ffffffff 488b4b18 4883f9ff 740e ff15???????? }
		$sequence_9 = { 4883ec18 c7042400000000 33c0 83f801 7441 8b0424 488b4c2420 }

	condition:
		7 of them and filesize <51200
}