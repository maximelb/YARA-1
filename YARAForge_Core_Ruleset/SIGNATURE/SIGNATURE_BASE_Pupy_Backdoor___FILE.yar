rule SIGNATURE_BASE_Pupy_Backdoor___FILE
{
	meta:
		description = "Detects Pupy backdoor"
		author = "Florian Roth (Nextron Systems)"
		id = "11509847-3454-5412-b3e1-02ad9cccc6ae"
		date = "2017-08-11"
		modified = "2023-12-05"
		reference = "https://github.com/n1nj4sec/pupy-binaries"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_pupy_rat.yar#L13-L44"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "0b12376c9cddc71f584314b07fb29fac189349b526c6d5028f475fa3984401ae"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "ae93714203c7ab4ab73f2ad8364819d16644c7649ea04f483b46924bd5bc0153"
		hash2 = "83380f351214c3bd2c8e62430f70f8f90d11c831695027f329af04806b9f8ea4"
		hash3 = "90757c1ae9597bea39bb52a38fb3d497358a2499c92c7636d71b95ec973186cc"
		hash4 = "20e19817f72e72f87c794843d46c55f2b8fd091582bceca0460c9f0640c7bbd8"
		hash5 = "06bb41c12644ca1761bcb3c14767180b673cb9d9116b555680073509e7063c3e"
		hash6 = "be83c513b24468558dc7df7f63d979af41287e568808ed8f807706f6992bfab2"
		hash7 = "8784c317e6977b4c201393913e76fc11ec34ea657de24e957d130ce9006caa01"

	strings:
		$x1 = "reflectively inject a dll into a process." fullword ascii
		$x2 = "ld_preload_inject_dll(cmdline, dll_buffer, hook_exit) -> pid" fullword ascii
		$x3 = "LD_PRELOAD=%s HOOK_EXIT=%d CLEANUP=%d exec %s 1>/dev/null 2>/dev/null" fullword ascii
		$x4 = "reflective_inject_dll" fullword ascii
		$x5 = "ld_preload_inject_dll" fullword ascii
		$x6 = "get_pupy_config() -> string" fullword ascii
		$x7 = "[INJECT] inject_dll. OpenProcess failed." fullword ascii
		$x8 = "reflective_inject_dll" fullword ascii
		$x9 = "reflective_inject_dll(pid, dll_buffer, isRemoteProcess64bits)" fullword ascii
		$x10 = "linux_inject_main" fullword ascii

	condition:
		(( uint16(0)==0x457f or uint16(0)==0x5a4d) and filesize <7000KB and 1 of them ) or 3 of them or ( uint16(0)==0x5a4d and pe.imphash()=="84a69bce2ff6d9f866b7ae63bd70b163")
}