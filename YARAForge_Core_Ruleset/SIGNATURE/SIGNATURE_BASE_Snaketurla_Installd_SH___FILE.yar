rule SIGNATURE_BASE_Snaketurla_Installd_SH___FILE
{
	meta:
		description = "Detects Snake / Turla Sample"
		author = "Florian Roth (Nextron Systems)"
		id = "65a97c0d-5c69-5e58-9a18-10e5684bc218"
		date = "2017-05-04"
		modified = "2023-12-05"
		reference = "https://goo.gl/QaOh4V"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_snaketurla_osx.yar#L59-L72"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "5b16107434951ddb212996909d53dfbcdae74ed13df6690ce3f6c74258ab4670"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$s1 = "PIDS=`ps cax | grep installdp" ascii
		$s2 = "${SCRIPT_DIR}/installdp ${FILE}" ascii

	condition:
		( uint16(0)==0x2123 and filesize <20KB and all of them )
}