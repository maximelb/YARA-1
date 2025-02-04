rule ELASTIC_Windows_Vulndriver_Powerprofiler_2Eedff78___FILE
{
	meta:
		description = "Name: AMDPowerProfiler.sys, Version: 6.1.0.0"
		author = "Elastic Security"
		id = "2eedff78-aa9b-4dab-b5f4-187bd2fc9a0c"
		date = "2022-04-07"
		modified = "2022-04-07"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_VulnDriver_PowerProfiler.yar#L1-L21"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "0af5ccb3d33a9ba92071c9637be6254030d61998733a5eb3583e865e17844e05"
		logic_hash = "c4a7ae2ffdf70984cea5b543af93b202c78b6108da1e442186d24071b44d6259"
		score = 75
		quality = 75
		tags = "FILE"
		fingerprint = "1273f1cd2de84076be28d7fb5fdac5fc9ab0de6f4e18915bdce6333181983cfb"
		threat_name = "Windows.VulnDriver.PowerProfiler"
		severity = 50
		arch_context = "x86"
		scan_context = "file"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$original_file_name = { 4F 00 72 00 69 00 67 00 69 00 6E 00 61 00 6C 00 46 00 69 00 6C 00 65 00 6E 00 61 00 6D 00 65 00 00 00 41 00 4D 00 44 00 50 00 6F 00 77 00 65 00 72 00 50 00 72 00 6F 00 66 00 69 00 6C 00 65 00 72 00 2E 00 73 00 79 00 73 00 00 00 }
		$version = /V\x00S\x00_\x00V\x00E\x00R\x00S\x00I\x00O\x00N\x00_\x00I\x00N\x00F\x00O\x00\x00\x00{0,4}\xbd\x04\xef\xfe[\x00-\xff]{4}(([\x00-\x01][\x00-\x00])([\x00-\x06][\x00-\x00])([\x00-\x00][\x00-\x00])([\x00-\x00][\x00-\x00])|([\x00-\xff][\x00-\xff])([\x00-\x05][\x00-\x00])([\x00-\xff][\x00-\xff])([\x00-\xff][\x00-\xff])|([\x00-\x00][\x00-\x00])([\x00-\x06][\x00-\x00])([\x00-\xff][\x00-\xff])([\x00-\xff][\x00-\xff]))/

	condition:
		int16 ( uint32(0x3C)+0x5c)==0x0001 and $original_file_name and $version
}