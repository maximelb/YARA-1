rule SIGNATURE_BASE_MAL_ELF_LNX_Mirai_Oct10_1___FILE
{
	meta:
		description = "Detects ELF Mirai variant"
		author = "Florian Roth (Nextron Systems)"
		id = "7bb28f03-03ba-581a-bc03-bd09a52787d9"
		date = "2018-10-27"
		modified = "2023-01-27"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/crime_mirai.yar#L101-L122"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "d16ed12522b310fccab027355281a206f5087d555f0d1fef4e7746d01d085613"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "3be2d250a3922aa3f784e232ce13135f587ac713b55da72ef844d64a508ddcfe"

	strings:
		$x1 = " -r /vi/mips.bushido; "
		$x2 = "/bin/busybox chmod 777 * /tmp/" ascii
		$s1 = "POST /ctrlt/DeviceUpgrade_1 HTTP/1.1" fullword ascii
		$s2 = "loadURL>$(echo HUAWEIUPNP)</NewDownloadURL></u:Upgrade></s:Body></s:Envelope>" fullword ascii
		$s3 = "POST /cdn-cgi/" ascii

	condition:
		uint16(0)==0x457f and filesize <200KB and ((1 of ($x*) and 1 of ($s*)) or all of ($x*))
}