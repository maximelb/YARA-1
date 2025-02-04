rule ESET_Apt_Windows_TA410_Flowcloud_Dll_Hijacking_Strings___FILE
{
	meta:
		description = "Matches filenames inside TA410 FlowCloud malicious DLL."
		author = "ESET Research"
		id = "6636d4d0-0a7f-5971-a7f4-58803042d874"
		date = "2021-10-12"
		modified = "2022-04-27"
		reference = "https://github.com/eset/malware-ioc/"
		source_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/ta410/ta410.yar#L498-L517"
		license_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/LICENSE"
		logic_hash = "e8082d4216364a12ba395f772b5caed94b3068d26a2b3a97ef711d61a82f65b3"
		score = 75
		quality = 80
		tags = "FILE"
		license = "BSD 2-Clause"
		version = "1"

	strings:
		$dat1 = "emedres.dat" wide
		$dat2 = "vviewres.dat" wide
		$dat3 = "setlangloc.dat" wide
		$dll1 = "emedres.dll" wide
		$dll2 = "vviewres.dll" wide
		$dll3 = "setlangloc.dll" wide

	condition:
		uint16(0)==0x5a4d and ( all of ($dat*) or all of ($dll*))
}