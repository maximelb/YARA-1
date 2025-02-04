rule SIGNATURE_BASE_Turla_Png_Dropper___FILE
{
	meta:
		description = "Detects the PNG Dropper used by the Turla group"
		author = "Ben Humphrey"
		id = "459f17c8-0eae-5736-8c7c-286625dc158f"
		date = "2018-11-23"
		modified = "2023-12-05"
		reference = "https://www.nccgroup.trust/uk/about-us/newsroom-and-events/blogs/2018/november/turla-png-dropper-is-back/"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_turla_png_dropper_nov18.yar#L3-L49"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "c859310660603d0748cf17daea0799af7684f2a9f77f729871eb57338fbfcca6"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "6ed939f59476fd31dc4d99e96136e928fbd88aec0d9c59846092c0e93a3c0e27"

	strings:
		$api0 = "GdiplusStartup"
		$api1 = "GdipAlloc"
		$api2 = "GdipCreateBitmapFromStreamICM"
		$api3 = "GdipBitmapLockBits"
		$api4 = "GdipGetImageWidth"
		$api5 = "GdipGetImageHeight"
		$api6 = "GdiplusShutdown"
		$code32 = {
            8B 46 3C               // mov     eax, [esi+3Ch]
            B9 0B 01 00 00         // mov     ecx, 10Bh
            66 39 4C 30 18         // cmp     [eax+esi+18h], cx
            8B 44 30 28            // mov     eax, [eax+esi+28h]
            6A 00                  // push    0
            B9 AF BE AD DE         // mov     ecx, 0DEADBEAFh
            51                     // push    ecx
            51                     // push    ecx
            03 C6                  // add     eax, esi
            56                     // push    esi
            FF D0                  // call eax
}