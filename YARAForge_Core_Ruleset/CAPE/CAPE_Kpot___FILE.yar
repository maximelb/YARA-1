rule CAPE_Kpot___FILE
{
	meta:
		description = "Kpot Stealer"
		author = "kevoreilly"
		id = "724fd6ac-e734-5952-b459-01cbaffdb89d"
		date = "2020-10-19"
		modified = "2020-10-19"
		reference = "https://github.com/kevoreilly/CAPEv2"
		source_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/data/yara/CAPE/Kpot.yar#L1-L13"
		license_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/LICENSE"
		logic_hash = "75abaab9a10e8ac8808425c389238285ab9bd9cb76f0cd03cc1e35b3ea0a1b0f"
		score = 75
		quality = 70
		tags = "FILE"
		cape_type = "Kpot Payload"

	strings:
		$format = "%s | %s | %s | %s | %s | %s | %s | %d | %s"
		$username = "username:s:"
		$os = "OS: %S x%d"

	condition:
		uint16(0)==0x5A4D and 2 of them
}