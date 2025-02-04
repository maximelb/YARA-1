rule SIGNATURE_BASE_MAL_Sednit_Delphidownloader_Apr18_2___FILE
{
	meta:
		description = "Detects malware from Sednit Delphi Downloader report"
		author = "Florian Roth (Nextron Systems)"
		id = "6ccd2f21-de44-52fb-912e-d3ecbe57e389"
		date = "2018-04-24"
		modified = "2023-12-05"
		reference = "https://www.welivesecurity.com/2018/04/24/sednit-update-analysis-zebrocy/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_sednit_delphidownloader.yar#L11-L38"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "32acbec3405007afce22b0521785439686338d4d3beb02a1d7b9005e49d87221"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "53aef1e8b281a00dea41387a24664655986b58d61d39cfbde7e58d8c2ca3efda"
		hash2 = "657c83297cfcc5809e89098adf69c206df95aee77bfc1292898bbbe1c44c9dc4"
		hash3 = "5427ecf4fa37e05a4fbab8a31436f2e94283a832b4e60a3475182001b9739182"
		hash4 = "0458317893575568681c86b83e7f9c916540f0f58073b386d4419517c57dcb8f"
		hash5 = "72aa4905598c9fb5a1e3222ba8daa3efb52bbff09d89603ab0911e43e15201f3"

	strings:
		$s1 = "2D444F574E4C4F41445F53544152542D" ascii
		$s2 = "55504C4F41445F414E445F455845435554455F46494C45" ascii
		$s3 = "4D6F7A696C6C612076352E31202857696E646F7773204E5420362E313B2072763A362E302E3129204765636B6F2F32303130303130312046697265666F782F36" ascii
		$s4 = "41646F62654461696C79557064617465" ascii
		$s5 = "53595354454D494E464F2026205441534B4C495354" ascii
		$s6 = "6373727376632E657865" ascii
		$s7 = "536F6674776172655C4D6963726F736F66745C57696E646F77735C43757272656E7456657273696F6E5C52756E" ascii
		$s8 = "5C536F6674776172655C4D6963726F736F66745C57696E646F7773204E545C43757272656E7456657273696F6E" ascii
		$s9 = "5C536F6674776172655C4D6963726F736F66745C57696E646F77735C43757272656E7456657273696F6E" ascii
		$s0 = "2D444F574E4C4F41445F53544152542D" ascii
		$fp1 = "<key name=\"profiles\">"

	condition:
		filesize <4000KB and 1 of ($s*) and not 1 of ($fp*)
}