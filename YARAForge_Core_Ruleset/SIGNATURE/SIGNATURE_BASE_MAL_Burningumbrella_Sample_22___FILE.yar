rule SIGNATURE_BASE_MAL_Burningumbrella_Sample_22___FILE
{
	meta:
		description = "Detects malware sample from Burning Umbrella report"
		author = "Florian Roth (Nextron Systems)"
		id = "90c6cda9-95a0-5de7-b1cd-110c238d993d"
		date = "2018-05-04"
		modified = "2023-12-05"
		reference = "https://401trg.pw/burning-umbrella/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_winnti_burning_umbrella.yar#L378-L395"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "af2d7917f54ca365465383484b6d19a941d4801898d162a6d3afa7b7c8491a0f"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "fa116cf9410f1613003ca423ad6ca92657a61b8e9eda1b05caf4f30ca650aee5"

	strings:
		$s1 = "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\" ascii
		$s3 = "Content-Disposition: form-data; name=\"txt\"; filename=\"" fullword ascii
		$s4 = "Fail To Enum Service" fullword ascii
		$s5 = "Host Power ON Time" fullword ascii
		$s6 = "%d Hours %2d Minutes %2d Seconds " fullword ascii

	condition:
		uint16(0)==0x5a4d and filesize <200KB and 4 of them
}