rule SIGNATURE_BASE_Wannacry_Ransomware___FILE
{
	meta:
		description = "Detects WannaCry Ransomware"
		author = "Florian Roth (Nextron Systems) (with the help of binar.ly)"
		id = "2e46b4db-8c94-53ed-ae27-31dd37b04940"
		date = "2017-05-12"
		modified = "2023-12-05"
		reference = "https://goo.gl/HG2j5T"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_wannacry.yar#L12-L46"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "a652444d7946dbbc4fae76cd01f2e20993999fd1e6fc48a9ac0da57aab87a2da"
		score = 75
		quality = 83
		tags = "FILE"
		hash1 = "ed01ebfbc9eb5bbea545af4d01bf5f1071661840480439c6e5babe8e080e41aa"

	strings:
		$x1 = "icacls . /grant Everyone:F /T /C /Q" fullword ascii
		$x2 = "taskdl.exe" fullword ascii
		$x3 = "tasksche.exe" fullword ascii
		$x4 = "Global\\MsWinZonesCacheCounterMutexA" fullword ascii
		$x5 = "WNcry@2ol7" fullword ascii
		$x6 = "www.iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.com" ascii
		$x7 = "mssecsvc.exe" fullword ascii
		$x8 = "C:\\%s\\qeriuwjhrf" fullword ascii
		$x9 = "icacls . /grant Everyone:F /T /C /Q" fullword ascii
		$s1 = "C:\\%s\\%s" fullword ascii
		$s2 = "<!-- Windows 10 --> " fullword ascii
		$s3 = "cmd.exe /c \"%s\"" fullword ascii
		$s4 = "msg/m_portuguese.wnry" fullword ascii
		$s5 = "\\\\192.168.56.20\\IPC$" fullword wide
		$s6 = "\\\\172.16.99.5\\IPC$" fullword wide
		$op1 = { 10 ac 72 0d 3d ff ff 1f ac 77 06 b8 01 00 00 00 }
		$op2 = { 44 24 64 8a c6 44 24 65 0e c6 44 24 66 80 c6 44 }
		$op3 = { 18 df 6c 24 14 dc 64 24 2c dc 6c 24 5c dc 15 88 }
		$op4 = { 09 ff 76 30 50 ff 56 2c 59 59 47 3b 7e 0c 7c }
		$op5 = { c1 ea 1d c1 ee 1e 83 e2 01 83 e6 01 8d 14 56 }
		$op6 = { 8d 48 ff f7 d1 8d 44 10 ff 23 f1 23 c1 }

	condition:
		uint16(0)==0x5a4d and filesize <10000KB and (1 of ($x*) and 1 of ($s*) or 3 of ($op*))
}