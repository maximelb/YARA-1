rule SIGNATURE_BASE_EXT_SUSP_OBFUSC_Macos_Roothelper_Obfuscated___FILE
{
	meta:
		description = "Yara for the public tool 'roothelper'. Used by XCSSET (https://gist.github.com/NullArray/f39b026b9e0d19f1e17390a244d679ec)"
		author = "im0prtp3"
		id = "7ff91c00-8178-525c-bb41-d09cf7cda588"
		date = "2021-06-07"
		modified = "2023-12-05"
		reference = "https://twitter.com/imp0rtp3/status/1401912205621202944"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_hktl_roothelper.yar#L2-L55"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "2121de0409f3f8e4c4e079944efb605776e0475cadc25607eb888cc6461ecaf3"
		score = 65
		quality = 83
		tags = "FILE"

	strings:
		$a1 = "E: neither argv[0] nor $_ works." fullword
		$b1 = "shll=%s\n" fullword
		$b2 = "argv[%d]=%.60s\n" fullword
		$b3 = "getenv(%s)=%s\n" fullword
		$b4 = "argc=%d\n" fullword
		$b5 = "argv=<null>\n" fullword
		$c1 = "%s%s%s: %s\n" fullword
		$c2 = "x%lx" fullword
		$c3 = "=%lu %d" fullword
		$c4 = "%lu %d%c" fullword
		$f1 = "rmarg"
		$f2 = "chkenv"
		$f3 = "untraceable"
		$f4 = "arc4"
		$f6 = "stte"
		$f7 = "with_file"
		$opcodes_1 = { 99 F7 7D ?? 4C 63 C2 42 0F B6 14 01 0F B6 3D }
		$opcodes_2 = { C6 [3] 00 00 00 C6 [3] 00 00 00 C6 [3] 00 00 00 8A 05 [2] 00 00 0F B6 [3] 00 00 89 CA }
		$opcodes_3 = { E8 [2] FF FF	8B 85 ?? F? FF FF 2B 85 ?? F? FF FF	83 ?? 01 89 85 ?? F? FF FF E9 ?? 00 00 00 }
		$weak_opcodes_1 = {48 8B 45 ?? 48 8B 00 48 3B 45 ??	0F 95 C1 88 4D ??}
		$weak_opcodes_2 = {	48 8B 45 ??	48 83 38 ??	0F 95 C1 88 4D ?? }

	condition:
		( uint32(0)==0xfeedface or uint32(0)==0xcefaedfe or uint32(0)==0xfeedfacf or uint32(0)==0xcffaedfe or uint32(0)==0xcafebabe or uint32(0)==0xbebafeca) and ($a1 or 3 of ($b*) or 5 of ($f*) or all of ($opcodes*) or (2 of ($b*) and (2 of ($c*) or 2 of ($opcodes*))) or (3 of ($c*) and 4 of ($f*)) or (2 of ($opcodes*) and ( all of ($weak_opcodes*) or 3 of ($c*))))
}