rule SIGNATURE_BASE_CVE_2017_8759_WSDL_In_RTF___CVE_2017_8759_FILE
{
	meta:
		description = "Detects malicious RTF file related CVE-2017-8759"
		author = "Security Doggo @xdxdxdxdoa"
		id = "daaa5489-af96-5a69-b2dd-81406c0a1edc"
		date = "2017-09-15"
		modified = "2023-12-05"
		reference = "https://twitter.com/xdxdxdxdoa/status/908665278199996416"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/exploit_cve_2017_8759.yar#L94-L110"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "47adc7adfc55239792aef818648546adb1627e74690de0d811100cc49aab8c2f"
		score = 75
		quality = 85
		tags = "CVE-2017-8759, FILE"

	strings:
		$doc = "d0cf11e0a1b11ae1"
		$obj = "\\objupdate"
		$wsdl = "7700730064006c003d00" nocase
		$http1 = "68007400740070003a002f002f00" nocase
		$http2 = "680074007400700073003a002f002f00" nocase
		$http3 = "6600740070003a002f002f00" nocase

	condition:
		uint32be(0)==0x7B5C7274 and $obj and $doc and $wsdl and 1 of ($http*)
}