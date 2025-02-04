rule ESET_Apt_Windows_Invisimole_Logs___FILE
{
	meta:
		description = "Detects log files with collected created by InvisiMole's RC2CL backdoor"
		author = "ESET Research"
		id = "151883ad-1f44-55b4-b12a-f0d399527189"
		date = "2021-05-17"
		modified = "2021-05-17"
		reference = "https://github.com/eset/malware-ioc/"
		source_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/invisimole/invisimole.yar#L54-L77"
		license_url = "https://github.com/eset/malware-ioc/blob/089121b074e13feca43c9c6898cc901a3d637e42/LICENSE"
		logic_hash = "d42423ccc768f1823c76d5cb2aec26434c796fc35bd4e2fbf435fcf7997d3ff0"
		score = 75
		quality = 80
		tags = "FILE"
		license = "BSD 2-Clause"
		version = "1"

	condition:
		uint32(0)==0x08F1CAA1 or uint32(0)==0x08F1CAA2 or uint32(0)==0x08F1CCC0 or uint32(0)==0x08F2AFC0 or uint32(0)==0x083AE4DF or uint32(0)==0x18F2CBB1 or uint32(0)==0x1900ABBA or uint32(0)==0x24F2CEA1 or uint32(0)==0xDA012193 or uint32(0)==0xDA018993 or uint32(0)==0xDA018995 or uint32(0)==0xDD018991
}