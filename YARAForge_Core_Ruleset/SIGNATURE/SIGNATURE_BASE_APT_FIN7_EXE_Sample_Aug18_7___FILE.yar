rule SIGNATURE_BASE_APT_FIN7_EXE_Sample_Aug18_7___FILE
{
	meta:
		description = "Detects sample from FIN7 report in August 2018"
		author = "Florian Roth (Nextron Systems)"
		id = "96943654-a6e8-59c0-ab6c-1ab3906a5d05"
		date = "2018-08-01"
		modified = "2023-12-05"
		reference = "https://www.fireeye.com/blog/threat-research/2018/08/fin7-pursuing-an-enigmatic-and-evasive-global-criminal-operation.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_fin7.yar#L200-L214"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "212bc13d22d7bc6b0ef10ae034ea09c7ea0d0e66afd212fb55c09cf43344c2ec"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "ce8ce35f85406cd7241c6cc402431445fa1b5a55c548cca2ea30eeb4a423b6f0"

	strings:
		$s1 = "libpng version" fullword ascii
		$s2 = "sdfkjdfjfhgurgvncmnvmfdjdkfjdkfjdf" fullword wide

	condition:
		uint16(0)==0x5a4d and filesize <800KB and all of them
}