rule SIGNATURE_BASE_SUSP_Doc_Windowsinstaller_Call_Feb22_1___FILE
{
	meta:
		description = "Triggers on docfiles executing windows installer. Used for deploying ThinBasic scripts."
		author = "Nils Kuhnert"
		id = "8f2e8f91-74e0-5574-9c0a-1479d6114212"
		date = "2022-02-26"
		modified = "2023-12-05"
		reference = "https://twitter.com/threatinsight/status/1497355737844133895"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_maldoc.yar#L1-L16"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "279182487ab7d35264adfbd0d122ee7634cd92ae1711de78ec7f20928df34f49"
		score = 65
		quality = 85
		tags = "FILE"
		tlp = "white"

	strings:
		$ = "WindowsInstaller.Installer$"
		$ = "CreateObject"
		$ = "InstallProduct"

	condition:
		uint32be(0)==0xd0cf11e0 and all of them
}