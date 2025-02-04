rule SIGNATURE_BASE_M_Hunting_Webshell_LIGHTWIRE_2___FILE
{
	meta:
		description = "Detects LIGHTWIRE based on the RC4 decoding and execution 1-liner."
		author = "Mandiant (modified by Florian Roth)"
		id = "9451da63-c68e-51e8-b4b1-c3082d46fbf6"
		date = "2024-01-11"
		modified = "2024-01-12"
		reference = "https://www.mandiant.com/resources/blog/suspected-apt-targets-ivanti-zero-day"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_report_ivanti_mandiant_jan24.yar#L57-L77"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "3d97f55a03ceb4f71671aa2ecf5b24e9"
		logic_hash = "37b22a6c45dd53bc7b3f0c75cc5072e990246fea24591d192176c0b496e92084"
		score = 75
		quality = 85
		tags = "FILE"

	strings:
		$s1 = "eval{my"
		$s2 = "Crypt::RC4->new(\""
		$s3 = "->RC4(decode_base64(CGI::param('"
		$s4 = ";eval $"
		$s5 = "\"Compatibility check: $@\";}"

	condition:
		filesize <10KB and all of them
}