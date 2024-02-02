rule TRELLIX_ARC_Purelocker_Ransomware___RANSOMWARE_FILE
{
	meta:
		description = "Rule to detect PureLocker ransomware based on binary sequences"
		author = "Marc Rivero | McAfee ATR Team"
		id = "3d945869-9faa-59de-add6-d664a7beef6f"
		date = "2019-11-13"
		modified = "2020-08-14"
		reference = "https://www.pandasecurity.com/mediacenter/security/purelocker-ransomware-servers/"
		source_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/ransomware/RANSOM_PureLocker.yar#L1-L25"
		license_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/LICENSE"
		logic_hash = "9f39f0ef922023a79919f5b41a7acda6c08373af8f5fd2d4c4dcaca6146970ea"
		score = 75
		quality = 70
		tags = "RANSOMWARE, FILE"
		rule_version = "v1"
		malware_type = "ransomware"
		malware_family = "Ransom:W32/PureLocker"
		actor_type = "Cybercrime"
		actor_group = "Unknown"

	strings:
		$sequence = { 31??FF????E8????????83????5BC2????555357BA????????83????C7????????????4A75??E8????????8B????????????8D????E8????????8B????????????8D??????E8????????FF????8D??????????59E8????????75??FF??????8D??????????59E8????????75??EB??B8????????EB??31??21??74??31??0FBE??E9????????8D??????C7????????????C7????????????66??????????FF??????E8????????89??????52E8????????5A5052E8????????5A50FF??????E8????????8D????????????50E8????????8B??????01??89??????8B??????83????53E8????????89??????8B??????21??75??31??0FBE??E9????????68????????68????????FF????????????FF??????E8????????FF????E8????????89??01??89????????????8B????????????83????53E8????????89????????????8B????????????21??75??FF??????E8????????31??0FBE??E9????????68????????68????????FF??????FF????????????E8????????0FBE??????????83????0F85????????8B??????83????53E8????????89????????????8B????????????21??75??E9????????68????????68????????FF??????FF????????????E8????????FF??????E8????????68????????8D??????508D??????5068????????68????????68????????31??5068????????68????????FF????????????FF????????????68????????E8????????89??????8B??????21??75??31??0FBE??E9????????8D??????FF????E8????????8D??????FF????E8????????FF????????????E8????????FF????????????E8????????B8????????0FBE??E9????????EB??68????????8D??????508D??????5068????????68????????68????????31??5068????????68????????FF??????FF????????????68????????E8????????89??????8B??????21??75??31??0FBE??E9????????8D??????508D??????FF????E8????????89????????????FF??????E8????????C7??????????????FF????????????E8????????C7????????????????????C7????????????????????8B????????????21??74??E9????????0FBE????????????83????75??68????????68????????8D????????????5068????????8D??????FF????E8????????89??????EB??68????????68????????8D????????????5068????????8D??????FF????E8????????89??????8B??????21??74??E9????????0FBE????????????83????75??8D????????????8D????FF????FF??8F??????8F??????EB??8D????????????8B????9952508F??????8F??????FF??????FF??????5B5F83????7F??7C??83????77??31??EB??B8????????09??75??E9????????0FBE????????????83????75??68????????E8????????89????????????8B????????????21??75??E9????????68????????68????????68????????FF????????????FF????????????FF????????????8D??????FF????E8????????89????????????EB??68????????E8????????89??????8B??????21??75??E9????????68????????68????????FF??????8B????????????508D??????FF????E8????????89????????????8B????????????21??74??E9????????0FBE????????????83????75??8B????????????21??75??E9????????8B????????????8D????FF????FF??5B5F83????75??83????74??31??EB??B8????????09??74??E9????????EB??8B??????21??75??E9????????8B??????8B????21??75??E9????????0FBE????????????83????75??C7????????????????????FF????????????E8????????89????????????C7????????????????????68????????68????????FF????????????FF????????????8B????????????8D????FF????FF??8D??????FF????E8????????89????????????EB??C7????????????????????FF????????????E8????????89????????????C7????????????????????68????????FF????????????FF????????????8B????????????FF????8D??????FF????E8????????89????????????8B????????????21??74??E9????????0FBE????????????83????75??8B????????????21??7E??68????????68????????FF????????????E8????????FF????????????E8????????C7????????????????????EB??8B??????21??7E??68????????68????????FF??????E8????????FF??????E8????????C7??????????????0FBE????????????83????75??8B????????????21??75??E9????????8B????????????8D????89??21??75??E9????????EB??8B????????????21??75??E9????????8B????????????8D????89??21??75??E9????????8B??????83????53E8????????89????????????8B????????????21??75??E9????????68????????68????????FF??????FF????????????E8????????0FBE????????????83????75??68????????68????????FF??????FF????????????8B????????????8D????FF????FF??8D??????FF????E8????????89????????????EB??68????????FF??????FF????????????8B????????????FF????8D??????FF????E8????????89????????????FF????????????E8????????C7????????????????????0FBE????????????83????75??68????????68????????FF????????????E8????????FF????????????E8????????C7????????????????????EB??68????????68????????FF????????????E8????????FF????????????E8????????C7????????????????????8B????????????21??74??EB??68????????8D??????FF????E8????????89????????????8B????????????21??74??EB??0FBE????????????83????75??68????????31??508D??????FF????E8????????C6????????8D??????FF????E8????????8D??????FF????E8????????0FBE??????0FBE??E9????????8B????????????21??7E??FF????????????E8????????8B????????????21??7E??FF????????????E8????????8B????????????21??7E??FF????????????E8????????8B??????21??7E??FF??????E8????????8B????????????21??7E??FF????????????E8????????8D??????8B????21??7E??68????????8D??????FF????E8????????8D??????8B????21??7E??8D??????FF????E8????????8D??????8B????21??7E??8D??????FF????E8????????31??0FBE??EB??31??FF????E8????????FF????????????E8????????FF??????E8????????81??????????5F5B5DC2????31??50E8????????83????????????74??FF??????????5889????FF??????FF??????FF??????FF??????EB??EB??B8????????EB??31??83????C2????31??C2????5553BA????????83????C7????????????4A75??E8????????8B??????8D????E8????????83????????????0F84????????FF????E8????????89??01??89??????8B??????83????53E8????????89??????83????????74??68????????68????????FF??????FF??????E8????????89??3B??????75??8B??????83????538D??????5866??????FF??????5866??????FF??????5889????FF??????????5889??????8D??????508D??????5068????????68????????FF??????89??21??75??FF??????5889??????FF??????E8????????8B??????EB??31??FF????E8????????83????5B5DC2????31??50E8????????83????????????74??FF??????????5889????FF??????FF??????FF??????FF??????EB??EB??B8????????EB??31??83????C2????31??5050E8????????FF??????E8????????52E8????????5A50FF??????????8D??????????50E8????????8D??????50E8????????52E8????????5A5052E8????????5A50FF??????????8D??????????50E8????????E8????????01????E8????????8D??????50E8????????FF????8D??????????59E8????????74??52E8????????5A5052E8????????5A50FF??????????8D??????????50E8????????E8????????01????E8????????52E8????????5A5052E8????????5A50FF??????????8D??????????50E8????????E8????????01????E8????????588B??????52E8????????8D??????50E8????????EB??8B????52E8????????5A5052E8????????8B??????52E8????????8D??????50E8????????8B????52E8????????5A5052E8????????5850E8????????5A01??EB??E8????????66????????FF????E8????????FF??????E8????????83????C331??50E8????????83????????????74??FF??????????5889????FF??????FF??????FF??????FF??????FF??????FF??????FF??????FF??????FF??????FF??????FF??????EB??EB??B8????????EB??31??83????C2????555331??50505050E8????????C7??????????????FF??????E8????????89????8B????21??75??31??EB??8D??????50FF??????FF??????68????????E8????????89??21??75??8B????FF????5889??????68????????68????????FF??????E8????????FF????E8????????8B??????EB??31??83????5B5DC35331??50505050E8????????8B??????8D????E8????????FF????E8????????89??????8B??????83????53E8????????89??????83????????74??68????????FF??????FF??????FF??????E8????????21??74??FF??????FF??????68????????E8????????89??F7??89??????FF??????E8????????8B??????EB??31??FF????E8????????83????5BC2????31??50E8????????83????????????74??FF??????????5889????FF??????FF??????FF??????FF??????FF??????FF??????EB??EB??B8????????EB??31??83????C2????5553BA????????83????C7????????????4A75??E8????????8B??????8D????E8????????FF????8D??????????59E8????????74??31??E9????????52E8????????5A50FF??????????8D??????????50E8????????8B??????52E8????????8D??????50E8????????FF??????E8????????89??01??89??????8B??????83????53E8????????89??????83????????0F84????????68????????68????????FF??????FF??????E8????????89??3B??????0F85????????FF??????8D??????5866??????8B??????83????535866??????FF??????5889????C7??????????????8D??????????8D??????E8????????8D??????C7????????????C7????????????8D??????505889????68????????68????????8D??????508D??????5068????????8D??????50E8????????89??21??75??8B??????21??7E??B8????????EB??31??21??74??FF??????E8????????C7??????????????68????????68????????8D??????508D??????50FF??????E8????????89??21??75??8D??????FF????5889??????FF??????E8????????8B??????21??7E??FF??????E8????????8B??????EB??31??FF??????E8????????FF????E8????????83????5B5DC2????555357BA????????83????C7???????????? }

	condition:
		uint16(0)==0x5a4d and filesize <300KB and all of them
}