rule SIGNATURE_BASE_SUSP_Unsigned_OSPPSVC___FILE
{
	meta:
		description = "Detects a suspicious unsigned office software protection platform service binary"
		author = "Florian Roth (Nextron Systems)"
		id = "0e312237-0c82-59da-b62d-56065c6075f0"
		date = "2019-09-26"
		modified = "2023-12-05"
		reference = "https://www.welivesecurity.com/2019/09/24/no-summer-vacations-zebrocy/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_sign_anomalies.yar#L4-L25"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "27d8d8d19e25a2e3cffb765a0b3122e38dcb72d60c00c554163ee193a04b3d82"
		score = 65
		quality = 85
		tags = "FILE"
		hash1 = "5294a730f1f0a176583b9ca2b988b3f5ec65dad8c6ebe556b5135566f2c16a56"

	strings:
		$sc1 = { 00 46 00 69 00 6C 00 65 00 44 00 65 00 73 00 63
               00 72 00 69 00 70 00 74 00 69 00 6F 00 6E 00 00
               00 00 00 4D 00 69 00 63 00 72 00 6F 00 73 00 6F
               00 66 00 74 00 20 00 4F 00 66 00 66 00 69 00 63
               00 65 00 20 00 53 00 6F 00 66 00 74 00 77 00 61
               00 72 00 65 00 20 00 50 00 72 00 6F 00 74 00 65
               00 63 00 74 00 69 00 6F 00 6E 00 20 00 50 00 6C
               00 61 00 74 00 66 00 6F 00 72 00 6D 00 20 00 53
               00 65 00 72 00 76 00 69 00 63 00 65 }

	condition:
		uint16(0)==0x5a4d and filesize <8000KB and $sc1 and pe.number_of_signatures<1
}