rule AVASTTI_EXE_PRIVATE___FILE
{
	meta:
		description = "No description has been set in the source file - AvastTI"
		author = "Avast Threat Intel Team"
		id = "1096b81d-5853-5d19-b502-c8166b712a3d"
		date = "2022-10-05"
		modified = "2022-10-05"
		reference = "https://github.com/avast/ioc"
		source_url = "https://github.com/avast/ioc/blob/b515ef8c40e107f0cb519789bc1c5be5bdcb9d6b/Manjusaka/Manjusaka.yar#L9-L13"
		license_url = "N/A"
		logic_hash = "0688672446142f95a22e49a04234cc90b6c9021efeda9ce57034c88d84944663"
		score = 75
		quality = 90
		tags = "FILE"

	condition:
		uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550
}