rule CAPE_Kovter___FILE
{
	meta:
		description = "Kovter Payload"
		author = "kevoreilly"
		id = "3dec3c4b-4678-5ed1-a4c3-c3d9abb58b1c"
		date = "2019-10-30"
		modified = "2019-10-30"
		reference = "https://github.com/kevoreilly/CAPEv2"
		source_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/data/yara/CAPE/Kovter.yar#L1-L14"
		license_url = "https://github.com/kevoreilly/CAPEv2/blob/5db57762ada4ddb5b47cdb2c13150917f53241c0/LICENSE"
		logic_hash = "888fccb8fbfbe6c05ec63bc5658b4743f8e10a96ef51b3868c2ff94afec76f2d"
		score = 75
		quality = 70
		tags = "FILE"
		cape_type = "Kovter Payload"

	strings:
		$a1 = "chkok"
		$a2 = "k2Tdgo"
		$a3 = "13_13_13"
		$a4 = "Win Server 2008 R2"

	condition:
		uint16(0)==0x5A4D and ( all of ($a*))
}