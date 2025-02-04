rule SIGNATURE_BASE_MAL_PE_Type_Babyshark_Loader___FILE
{
	meta:
		description = "Detects PE Type babyShark loader mentioned in February 2019 blog post by PaloAltNetworks"
		author = "Florian Roth (Nextron Systems)"
		id = "141e7a67-7930-5fd8-ac91-5d31b99e4ff3"
		date = "2019-02-24"
		modified = "2023-12-05"
		reference = "https://unit42.paloaltonetworks.com/new-babyshark-malware-targets-u-s-national-security-think-tanks/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_babyshark.yar#L4-L27"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "0ab9a30cb731922d965a9cf58094fea36d5c74b9989324efee603808591ea6a5"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "6f76a8e16908ba2d576cf0e8cdb70114dcb70e0f7223be10aab3a728dc65c41c"

	strings:
		$x1 = "reg add \"HKEY_CURRENT_USER\\Software\\Microsoft\\Command Processor\" /v AutoRun /t REG_SZ /d \"%s\" /f" fullword ascii
		$x2 = /mshta\.exe http:\/\/[a-z0-9\.\/]{5,30}\.hta/
		$xc1 = { 57 69 6E 45 78 65 63 00 6B 65 72 6E 65 6C 33 32
               2E 44 4C 4C 00 00 00 00 }

	condition:
		uint16(0)==0x5a4d and (pe.imphash()=="57b6d88707d9cd1c87169076c24f962e" or 1 of them or for any i in (0..pe.number_of_signatures) : (pe.signatures[i].issuer contains "thawte SHA256 Code Signing CA" and pe.signatures[i].serial=="0f:ff:e4:32:a5:3f:f0:3b:92:23:f8:8b:e1:b8:3d:9d"))
}