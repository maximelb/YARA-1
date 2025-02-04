rule SIGNATURE_BASE_APT_MAL_LNX_Kobalos___FILE
{
	meta:
		description = "Kobalos malware"
		author = "Marc-Etienne M.Leveille"
		id = "dfa47e30-c093-57f6-af01-72a2534cc6f4"
		date = "2020-11-02"
		modified = "2023-12-05"
		reference = "https://github.com/eset/malware-ioc/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_lnx_kobalos.yar#L32-L57"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "48aec47b70633d4c8cb55d90a2e168f3c2027ef27cfe1cd5d30dcdc08a2ff717"
		score = 75
		quality = 85
		tags = "FILE"
		license = "BSD 2-Clause"
		version = "1"

	strings:
		$encrypted_strings_sizes = {
            05 00 00 00 09 00 00 00  04 00 00 00 06 00 00 00
            08 00 00 00 08 00 00 00  02 00 00 00 02 00 00 00
            01 00 00 00 01 00 00 00  05 00 00 00 07 00 00 00
            05 00 00 00 05 00 00 00  05 00 00 00 0A 00 00 00
}