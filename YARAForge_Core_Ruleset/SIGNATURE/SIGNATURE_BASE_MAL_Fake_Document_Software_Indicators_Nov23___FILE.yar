rule SIGNATURE_BASE_MAL_Fake_Document_Software_Indicators_Nov23___FILE
{
	meta:
		description = "Detects indicators of fake document/image utility software that acts as a downloader for additional malware"
		author = "Jonathan Peters"
		id = "231474cd-1ec9-5738-bf48-ef707689056d"
		date = "2023-11-13"
		modified = "2023-12-12"
		reference = "https://nochlab.blogspot.com/2023/09/net-in-javascript-fake-pdf-converter.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/mal_fake_document_software.yar#L1-L19"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "5f0a088bf672559fbac90313768d41b79be7f1f56c6ddb36f0dcd265a07f98b2"
		score = 80
		quality = 85
		tags = "FILE"
		hash1 = "ac5356ae011effb9d401bf428c92a48cf82c9b61f4c24a29a9718e3379f90f1d"
		hash2 = "d1c29c2243c511ca3264ad568a6be62f374e104b903eca93debce6691e1c5007"

	strings:
		$ = "tweakscode.com" wide
		$ = "www.createmygif.com" wide
		$ = "www.videownload.com" wide
		$ = "www.pdfconverterz.com" wide
		$ = "www.pdfconvertercompare.com" wide

	condition:
		uint16(0)==0x5a4d and 1 of them
}