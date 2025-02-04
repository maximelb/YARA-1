rule ESET_Apt_Windows_Invisimole_RC2CL_Backdoor___FILE
{
	meta:
		description = "InvisiMole RC2CL backdoor"
		author = "ESET Research"
		id = "0228b8ee-bf03-504e-8cdf-8a1c9a79d54e"
		date = "2021-05-17"
		modified = "2021-05-17"
		reference = "https://github.com/eset/malware-ioc/"
		source_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/invisimole/invisimole.yar#L172-L213"
		license_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/LICENSE"
		logic_hash = "c38550023515d33eaaf0669cc8b874bcfd09653a07c7edbf72e3344d1cf31541"
		score = 75
		quality = 78
		tags = "FILE"
		license = "BSD 2-Clause"
		version = "1"

	strings:
		$s1 = "RC2CL" wide
		$s2 = "hp12KsNh92Dwd" wide
		$s3 = "ZLib package %s: files: %d, total size: %d" wide
		$s4 = "\\Un4seen" wide
		$s5 = {9E 01 3A AD}
		$s6 = "~mrc_" wide
		$s7 = "~src_" wide
		$s8 = "~wbc_" wide
		$s9 = "zdf_" wide
		$s10 = "~S0PM" wide
		$s11 = "~A0FM" wide
		$s12 = "~70Z63\\" wide
		$s13 = "~E070C" wide
		$s14 = "~N031E" wide
		$s15 = "%szdf_%s.data" wide
		$s16 = "%spicture.crd" wide
		$s17 = "%s70zf_%s.cab" wide
		$s18 = "%spreview.crd" wide
		$s19 = "Value_Bck" wide
		$s20 = "Value_WSFX_ZC" wide
		$s21 = "MachineAccessStateData" wide
		$s22 = "SettingsSR2" wide

	condition:
		(( uint16(0)==0x5A4D) or ESET_Invisimole_Blob_PRIVATE) and 5 of ($s*)
}