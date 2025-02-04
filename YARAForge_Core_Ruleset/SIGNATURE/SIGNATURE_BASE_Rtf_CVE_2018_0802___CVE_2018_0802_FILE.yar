rule SIGNATURE_BASE_Rtf_CVE_2018_0802___CVE_2018_0802_FILE
{
	meta:
		description = "Attempts to exploit CVE-2018-0802"
		author = "Rich Warren"
		id = "162492a3-d792-5f1c-a143-191c62b54728"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "http://www.freebuf.com/vuls/159789.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/exploit_cve_2018_0802.yar#L2-L14"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "ac1cd4f2162d2c8415e2ee5167cabb8e8aff08a06afe244f5bfe099f2d3fbeb4"
		score = 75
		quality = 83
		tags = "CVE-2018-0802, FILE"

	strings:
		$equation = { 45 71 75 61 74 69 6F 6E 2E 33 }
		$header_and_shellcode = /03010[0,1][0-9a-fA-F]{308,310}2500/ ascii nocase

	condition:
		uint32be(0)==0x7B5C7274 and all of them
}