rule SIGNATURE_BASE_Golddragon_Runnignrat___FILE
{
	meta:
		description = "Detects Running RAT malware from Gold Dragon report"
		author = "Florian Roth (Nextron Systems)"
		id = "b99b89a4-a764-5d72-8360-8e53461267d9"
		date = "2018-02-03"
		modified = "2023-01-07"
		reference = "https://goo.gl/rW1yvZ"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_golddragon.yar#L130-L154"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "5bcc2ebbd54c31cf418430149eb558e8e26355161d0b53f403e7dfd2e1707baa"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "94aa827a514d7aa70c404ec326edaaad4b2b738ffaea5a66c0c9f246738df579"
		hash2 = "5cbc07895d099ce39a3142025c557b7fac41d79914535ab7ffc2094809f12a4b"
		hash3 = "98ccf3a463b81a47fdf4275e228a8f2266e613e08baae8bdcd098e49851ed49a"

	strings:
		$s1 = "cmd.exe /c systeminfo " fullword ascii
		$s2 = "ieproxy.dll" fullword ascii
		$s3 = "taskkill /f /im daumcleaner.exe" fullword ascii
		$s4 = "cmd.exe /c tasklist " fullword ascii
		$s5 = "rundll32.exe \"%s\" Run" fullword ascii
		$s6 = "Mozilla/5.0 (Windows NT 5.2; rv:12.0) Gecko/20100101 Firefox/12.0" fullword ascii
		$s7 = "%s\\%s_%03d" fullword wide
		$s8 = "\\PI_001.dat" ascii

	condition:
		uint16(0)==0x5a4d and filesize <3000KB and (3 of them )
}