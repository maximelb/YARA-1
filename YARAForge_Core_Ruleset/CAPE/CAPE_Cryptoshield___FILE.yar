rule CAPE_Cryptoshield___FILE
{
	meta:
		description = "Cryptoshield Payload"
		author = "kevoreilly"
		id = "a7b60a0d-7d46-59c9-8273-ee23bae3fbbc"
		date = "2019-10-30"
		modified = "2019-10-30"
		reference = "https://github.com/kevoreilly/CAPEv2"
		source_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/data/yara/CAPE/Cryptoshield.yar#L1-L13"
		license_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/LICENSE"
		logic_hash = "46064b4c69cb1af01330c5d194ef50728e0f0479e9fbf72828822935f8e37ac6"
		score = 75
		quality = 70
		tags = "FILE"
		cape_type = "Cryptoshield Payload"

	strings:
		$a1 = "CRYPTOSHIELD." wide
		$a2 = "Click on Yes in the next window for restore work explorer" wide
		$a3 = "r_sp@india.com - SUPPORT"

	condition:
		uint16(0)==0x5A4D and ( all of ($a*))
}