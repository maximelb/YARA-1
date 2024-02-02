rule SIGNATURE_BASE_MAL_Driver_Microsoftcorporation_Ndislansys_Microsoftwindowsoperatingsystem_B0EB
{
	meta:
		description = "Detects malicious driver mentioned in LOLDrivers project using VersionInfo values from the PE header - ndislan.sys"
		author = "Florian Roth"
		id = "c94adcf3-2ea6-5856-9327-2e5ed1c49b22"
		date = "2023-06-14"
		modified = "2023-12-05"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/yara-rules_mal_drivers.yar#L245-L265"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "b0eb4d999e4e0e7c2e33ff081e847c87b49940eb24a9e0794c6aa9516832c427"
		logic_hash = "4b92b69636dea19a23172def47e9a1bbd4507075ec118b48db30fec377b8fbff"
		score = 70
		quality = 85
		tags = ""

	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004d00530020004c0041004e0020004400720069007600650072 }
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e }
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e0031003400320031 }
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e0031003400320031 }
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006e006400690073006c0061006e002e007300790073 }
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004d006900630072006f0073006f0066007400ae002000570069006e0064006f0077007300ae0020004f007000650072006100740069006e0067002000530079007300740065006d }
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006e006400690073006c0061006e002e007300790073 }
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00a90020004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e }

	condition:
		all of them
}