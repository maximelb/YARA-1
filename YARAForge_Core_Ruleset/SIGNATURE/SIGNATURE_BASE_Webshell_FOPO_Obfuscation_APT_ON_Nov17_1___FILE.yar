rule SIGNATURE_BASE_Webshell_FOPO_Obfuscation_APT_ON_Nov17_1___FILE
{
	meta:
		description = "Detects malware from NK APT incident DE"
		author = "Florian Roth (Nextron Systems)"
		id = "0122bb03-8ff0-554d-8fee-458f0ddd7664"
		date = "2017-11-17"
		modified = "2023-12-05"
		reference = "Internal Research - ON"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/thor-webshells.yar#L9834-L9853"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "3c5bc3ee0218d4ce6902e49d7f938264ecd158f1f458e2fcef878f06f003ed08"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "ed6e2e0027d3f564f5ce438984dc8a54577df822ce56ce079c60c99a91d5ffb1"

	strings:
		$x1 = "Obfuscation provided by FOPO" fullword ascii
		$s1 = "\";@eval($" ascii
		$f1 = { 22 29 29 3B 0D 0A 3F 3E }

	condition:
		uint16(0)==0x3f3c and filesize <800KB and ($x1 or ($s1 in (0..350) and $f1 at ( filesize -23)))
}