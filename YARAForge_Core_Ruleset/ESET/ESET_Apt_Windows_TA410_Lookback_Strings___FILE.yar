rule ESET_Apt_Windows_TA410_Lookback_Strings___FILE
{
	meta:
		description = "Matches multiple strings and export names in TA410 LookBack."
		author = "ESET Research"
		id = "b693c468-5abf-579d-bc03-67f67339feb9"
		date = "2021-10-12"
		modified = "2022-04-27"
		reference = "https://github.com/eset/malware-ioc/"
		source_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/ta410/ta410.yar#L311-L331"
		license_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/LICENSE"
		logic_hash = "d17ed604e3691c20fe489f95197b7b802ec951ed13d538fa6643449485b326b2"
		score = 75
		quality = 80
		tags = "FILE"
		license = "BSD 2-Clause"
		version = "1"

	strings:
		$s1 = "SodomMainFree" ascii wide
		$s2 = "SodomMainInit" ascii wide
		$s3 = "SodomNormal.bin" ascii wide
		$s4 = "SodomHttp.bin" ascii wide
		$s5 = "sodom.ini" ascii wide
		$s6 = "SodomMainProc" ascii wide

	condition:
		uint16(0)==0x5a4d and (2 of them or pe.exports("SodomBodyLoad") or pe.exports("SodomBodyLoadTest"))
}