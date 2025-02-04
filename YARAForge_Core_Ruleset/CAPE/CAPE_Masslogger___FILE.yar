rule CAPE_Masslogger___FILE
{
	meta:
		description = "MassLogger"
		author = "kevoreilly"
		id = "0743421a-36f7-5b7c-859f-b461511151cb"
		date = "2020-11-24"
		modified = "2020-11-24"
		reference = "https://github.com/kevoreilly/CAPEv2"
		source_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/data/yara/CAPE/MassLogger.yar#L1-L12"
		license_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/LICENSE"
		logic_hash = "c8d82694810aafbdc6a35a661e7431e9536035e2f7fef90b9359064c4209b66c"
		score = 75
		quality = 70
		tags = "FILE"
		cape_type = "MassLogger Payload"

	strings:
		$name = "MassLogger"
		$fody = "Costura"

	condition:
		uint16(0)==0x5A4D and 2 of them
}