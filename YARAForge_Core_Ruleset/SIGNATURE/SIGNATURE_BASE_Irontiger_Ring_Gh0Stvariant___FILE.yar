rule SIGNATURE_BASE_Irontiger_Ring_Gh0Stvariant___FILE
{
	meta:
		description = "Iron Tiger Malware - Ring Gh0stvariant"
		author = "Cyber Safety Solutions, Trend Micro"
		id = "6858550a-4000-581c-b270-370db8ed1c57"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "http://goo.gl/T5fSJC"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_irontiger_trendmicro.yar#L242-L257"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "6df729e3b472d3930f5bc4a1b5b8736567df43b78bec3401f5d41bf7ba30d93b"
		score = 75
		quality = 85
		tags = "FILE"

	strings:
		$str1 = "RING RAT Exception" wide ascii
		$str2 = "(can not update server recently)!" wide ascii
		$str4 = "CreaetProcess Error" wide ascii
		$bla1 = "Sucess!" wide ascii
		$bla2 = "user canceled!" wide ascii

	condition:
		uint16(0)==0x5a4d and (( any of ($str*)) or ( all of ($bla*)))
}