rule SIGNATURE_BASE_MAL_Ransomware_Germanwiper___FILE
{
	meta:
		description = "Detects RansomWare GermanWiper in Memory or in unpacked state"
		author = "Frank Boldewin (@r3c0nst), modified by Florian Roth"
		id = "e7587691-f69a-53e7-bab2-875179fbfa19"
		date = "2019-08-05"
		modified = "2023-12-05"
		reference = "https://twitter.com/r3c0nst/status/1158326526766657538"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_ransom_germanwiper.yar#L1-L27"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "dcb4f91006a893149a60e9708efb9de809f75c810bddfd2d90c8f6fffa0879ea"
		score = 75
		quality = 85
		tags = "FILE"
		hash_packed = "41364427dee49bf544dcff61a6899b3b7e59852435e4107931e294079a42de7c"
		hash_unpacked = "708967cad421bb2396017bdd10a42e6799da27e29264f4b5fb095c0e3503e447"

	strings:
		$x_Mutex1 = "HSDFSD-HFSD-3241-91E7-ASDGSDGHH" ascii
		$x_Mutex2 = "cFgxTERNWEVhM2V" ascii
		$PurgeCode = { 6a 00 8b 47 08 50 6a 00 6a 01 e8 ?? ?? ?? ??
                     50 e8 ?? ?? ?? ?? 8b f0 8b d7 8b c3 e8 }
		$ProcessKill1 = "sqbcoreservice.exe" ascii
		$ProcessKill2 = "isqlplussvc.exe" ascii
		$KillShadowCopies = "vssadmin.exe delete shadows" ascii
		$Domain1 = "cdnjs.cloudflare.com" ascii
		$Domain2 = "expandingdelegation.top" ascii
		$RansomNote = "Entschluesselungs_Anleitung.html" ascii

	condition:
		uint16(0)==0x5A4D and filesize <1000KB and (1 of ($x*) or 3 of them )
}