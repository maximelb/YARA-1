rule SIGNATURE_BASE_APT_Thrip_Sample_Jun18_7___FILE
{
	meta:
		description = "Detects sample found in Thrip report by Symantec "
		author = "Florian Roth (Nextron Systems)"
		id = "16739590-eb88-5de2-bd76-974b3343ec19"
		date = "2018-06-21"
		modified = "2023-12-05"
		reference = "https://www.symantec.com/blogs/threat-intelligence/thrip-hits-satellite-telecoms-defense-targets "
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_thrip.yar#L118-L131"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "198f8869e56d5549d9195524a86f6557162c5d25b4915bec0bf513797d880ea1"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "6b714dc1c7e58589374200d2c7f3d820798473faeb26855e53101b8f3c701e3f"

	strings:
		$s1 = "C:\\runme.exe" ascii

	condition:
		uint16(0)==0x5a4d and filesize <60KB and 1 of them
}