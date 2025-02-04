rule SIGNATURE_BASE_HKTL_Shellpop_Socat___FILE
{
	meta:
		description = "Detects suspicious socat popshell"
		author = "Tobias Michalski"
		id = "23c331ba-217c-5b17-b45e-d553eea76a56"
		date = "2018-05-18"
		modified = "2023-12-05"
		reference = "https://github.com/0x00-0x00/ShellPop"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/thor-hacktools.yar#L4295-L4308"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "48c06096b27be11ae12cc38294acb495b739101cabc04e89eb76e93fb42c52df"
		score = 65
		quality = 85
		tags = "FILE"
		hash1 = "267f69858a5490efb236628260b275ad4bbfeebf4a83fab8776e333ca706a6a0"

	strings:
		$s1 = "socat tcp-connect" ascii
		$s2 = ",pty,stderr,setsid,sigint,sane" ascii

	condition:
		filesize <1KB and 2 of them
}