rule SIGNATURE_BASE_MAL_Passwordstate_Moserware_Backdoor_Apr21_1___FILE
{
	meta:
		description = "Detects backdoor used in Passwordstate incident"
		author = "Florian Roth (Nextron Systems)"
		id = "061de3ae-c404-5e4a-a16b-b3b208b1ae7f"
		date = "2021-04-25"
		modified = "2023-12-05"
		reference = "https://thehackernews.com/2021/04/passwordstate-password-manager-update.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/mal_passwordstate_backdoor.yar#L1-L24"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "46bf5b7f4f75997535742021d1d5c2129daae0b3836c08383058e5e5b8e27d93"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "c2169ab4a39220d21709964d57e2eafe4b68c115061cbb64507cfbbddbe635c6"
		hash2 = "f23f9c2aaf94147b2c5d4b39b56514cd67102d3293bdef85101e2c05ee1c3bf9"

	strings:
		$x1 = "https://passwordstate-18ed2.kxcdn.com" wide
		$s1 = " ProxyUserName, ProxyPassword FROM [SystemSettings]" wide fullword
		$s2 = "PasswordstateService.Passwordstate.Crypto" wide
		$s3 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari" wide fullword
		$op1 = { 00 4c 00 4e 00 43 00 4c 00 49 00 31 00 31 00 3b 00 00 17 }
		$op2 = { 4c 00 49 00 31 00 31 00 3b 00 00 17 50 00 72 00 }
		$op3 = { 61 00 74 00 65 00 2d 00 31 00 38 00 65 00 64 00 32 00 2e 00 6b 00 78 00 }

	condition:
		uint16(0)==0x5a4d and filesize <200KB and 1 of ($x*) or 3 of them
}