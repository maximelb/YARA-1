rule SIGNATURE_BASE_Beacon_K5Om___FILE
{
	meta:
		description = "Detects Meterpreter Beacon - file K5om.dll"
		author = "Florian Roth (Nextron Systems)"
		id = "9354d20a-d798-55bf-a735-820f21d4a861"
		date = "2017-06-07"
		modified = "2023-12-05"
		reference = "https://www.fireeye.com/blog/threat-research/2017/06/phished-at-the-request-of-counsel.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_apt19.yar#L10-L30"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "4b1ec0fc6c0ad4e76c526f7568153bca62f9bffdd38a3b1eaa51a37a1dcab226"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "e3494fd2cc7e9e02cff76841630892e4baed34a3e1ef2b9ae4e2608f9a4d7be9"

	strings:
		$x1 = "IEX (New-Object Net.Webclient).DownloadString('http://127.0.0.1:%u/'); %s" fullword ascii
		$x2 = "powershell -nop -exec bypass -EncodedCommand \"%s\"" fullword ascii
		$x3 = "%d is an x86 process (can't inject x64 content)" fullword ascii
		$s1 = "Could not open process token: %d (%u)" fullword ascii
		$s2 = "0fd00b.dll" fullword ascii
		$s3 = "%s.4%08x%08x%08x%08x%08x.%08x%08x%08x%08x%08x%08x%08x.%08x%08x%08x%08x%08x%08x%08x.%08x%08x%08x%08x%08x%08x%08x.%x%x.%s" fullword ascii
		$s4 = "Could not connect to pipe (%s): %d" fullword ascii

	condition:
		( uint16(0)==0x5a4d and filesize <600KB and (1 of ($x*) or 3 of them ))
}