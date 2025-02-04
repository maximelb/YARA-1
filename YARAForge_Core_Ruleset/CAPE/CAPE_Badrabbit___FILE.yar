rule CAPE_Badrabbit___FILE
{
	meta:
		description = "BadRabbit Payload"
		author = "kevoreilly"
		id = "c7204772-6f14-57b7-88c1-e9156f9897d5"
		date = "2019-10-30"
		modified = "2019-10-30"
		reference = "https://github.com/kevoreilly/CAPEv2"
		source_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/data/yara/CAPE/BadRabbit.yar#L1-L13"
		license_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/LICENSE"
		logic_hash = "309e14ab4ea2f919358631f9d8b2aaff1f51e7708b6114e4e6bf4a9d9a5fc86c"
		score = 75
		quality = 70
		tags = "FILE"
		cape_type = "BadRabbit Payload"

	strings:
		$a1 = "caforssztxqzf2nm.onion" wide
		$a2 = "schtasks /Create /SC once /TN drogon /RU SYSTEM" wide
		$a3 = "schtasks /Create /RU SYSTEM /SC ONSTART /TN rhaegal" wide

	condition:
		uint16(0)==0x5A4D and ( all of ($a*))
}