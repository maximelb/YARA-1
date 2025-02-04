rule SIGNATURE_BASE_Datper_Backdoor___FILE
{
	meta:
		description = "Detects Datper Malware"
		author = "Florian Roth (Nextron Systems)"
		id = "547db8bb-cc02-5521-8b85-845b1652fee9"
		date = "2017-08-21"
		modified = "2023-12-05"
		reference = "http://blog.jpcert.or.jp/2017/08/detecting-datper-malware-from-proxy-logs.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_tick_datper.yar#L13-L45"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "eacdc648226f20fa3847f0b5e8cafcee59cc1c6274cabb885db297f5b5fceafb"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "7d70d659c421b50604ce3e0a1bf423ab7e54b9df361360933bac3bb852a31849"
		hash2 = "331ac0965b50958db49b7794cc819b2945d7b5e5e919c185d83e997e205f107b"
		hash3 = "90ac1fb148ded4f46949a5fea4cd8c65d4ea9585046d66459328a5866f8198b2"
		hash4 = "12d9b4ec7f8ae42c67a6fd030efb027137dbe29e63f6f669eb932d0299fbe82f"
		hash5 = "2384e8ad8eee6db1e69b3ee7b6b3d01ae09f99a86901a0a87fb2788c1115090c"
		hash6 = "1e511c32cdf8abe23d8ba7c39da5ce7fc6c87fdb551c9fc3265ee22ac4076e27"
		hash7 = "7bc042b9a599e1024a668b9921e2a42a02545429cf446d5b3d21f20185afa6ce"

	strings:
		$s1 = "RtlGetCo" fullword ascii
		$s2 = "hutils" fullword ascii
		$s3 = "kza2FWU,f;\"3U&zpa3U(W`J" fullword ascii
		$c1 = "dkkwldngn" fullword ascii
		$c2 = "ndkkwqgcm" fullword ascii

	condition:
		( uint16(0)==0x5a4d and filesize <300KB and (pe.imphash()=="58db98e2334746d349d607e4d73bc5ea" or pe.imphash()=="8fbed921458af485ce84fb7d9b13899e" or (2 of ($s*) and 1 of ($c*)) or ($s3 and $c1)))
}