rule TRELLIX_ARC_Pwnlnx_Backdoor_Variant_2___BACKDOOR_FILE
{
	meta:
		description = "Rule to detect the backdoor pwnlnx variant 2"
		author = "Marc Rivero | McAfee ATR Team"
		id = "c4ee686b-49d9-5566-b749-1144a19c1fee"
		date = "2020-04-17"
		modified = "2020-08-14"
		reference = "https://www.blackberry.com/content/dam/blackberry-com/asset/enterprise/pdf/direct/report-bb-decade-of-the-rats.pdf"
		source_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/APT/APT_decade_of_RATs.yar#L35-L65"
		license_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/LICENSE"
		hash = "08cc67002782cbafd97a4bff549d25dd72d6976d2fdf79339aaf5a3ff7c3107e"
		logic_hash = "08ea40ba72677263a41f62097fc38040361ba595d67cb04979b66548c7f4d271"
		score = 75
		quality = 70
		tags = "BACKDOOR, FILE"
		rule_version = "v1"
		malware_type = "backdoor"
		malware_family = "Backdoor:W32/Pwnlnx"
		actor_type = "Cybercrime"
		actor_group = "Unknown"

	strings:
		$bp = { 7F??4C4602??01??000000000000000002??3E????0000000004??00000000??????00000000000088????????????00000000??????38??05????????????????0000????????????0000000000000000??????0000000000004000000000??????0D??????????????0D????????0000????00000000????0000????0000????????????0000????????????0000????????????0000????12??00000000????????????00000000????00000000??????000004??00005801??00000000??????4000000000??????4000000000????????00000000????????00000000??????000000000000070000??????000080??????0000000080??????0000000080??????0000000028??00000000000070??00000000000008??00000000000051E5??64??000000000000000000000000000000000000000000000000000000000000000000000000000000000000????000000000000??????000010??000001??0000474E5500000000????0000????0000????0000??????000014??000003??0000474E55????????????CC78??78??83????????????CB371F0000000080??????0000000025????????0000????7E??00000000????????????0000????????????0000??????4200000000????????????0000????????????0000????????????0000????????????0000????????????0000????????????0000????????????0000????????????0000????????????0000????????????0000????????????0000??????4200000000????????????0000????????????0000??????4200000000????????????0000????????????0000????????????0000????76??00000000????????????0000????8B????00000000C8??????0000000025????????0000??????4200000000????76??00000000????????????0000????444200000000????76??00000000????????????0000??????4900000000????76??00000000????????????0000??????4600000000????76??00000000????????????0000????424200000000??????EC08??33??0000E8????????E8????????4883????C3FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????FF??????????68????????E9????????00000000000000000000000000000000000000000000000031??4989??5E4889??4883????505449C7??????????48C7??????????48C7??????????E8????????F490904883????488B??????????4885??74??FF??4883????C390909090909090909090909090554889??534883????80????????????75??BB????????488B??????????4881??????????48C1????4883????4839??73??660F1F??????4883????4889??????????FF????????????488B??????????4839??72??B8????????4885??74??BF????????E8????????C6????????????4883????5BC9C30F1F????????????55B8????????4885??4889??74??BE????????BF????????E8????????4883????????????74??B8????????4885??74??BF????????C9FF??0F1F??????????C9C39090554889??534881??????????89??????????48C7????????????8B????3D????????0F87????????8B????89??488D??????????8B??????????4889??89??E8????????85??0F84????????8B????89??488D??????????89??4889??E8????????BA????????488D??????????4889??4889??E8????????4889????4883??????0F84????????488D??????????488D??????????4889??4889??E8????????85??0F85????????488B??????????4889????C7????????????488B????89????488B????48C1????89????488B????4889????488B????4889??????488B????4889??????E8????????89????BE????????488D????E8????????488D????8B??????????BA????????4889??89??E8????????85??0F84????????488D????8B??????????BA????????4889??89??E8????????85??0F84????????BE????????488D????E8????????8B????488B????4889????488B????4889??????488B????4889??????E8????????39??0F85????????8B????89??4889??48C1????8B????89??488D????4889????488B????488B????BA????????4889??4889??E8????????488B????4889????EB??488B????488D??????????4889??BA????????BE????????4889??E8????????89????83??????7E??8B????488D??????????89??4889??E8????????8B????4863??488D??????????8B??????????4889??89??E8????????85??74??8B????48984801????488B????483B????7C??EB??90EB??90EB??90EB??90EB??90EB??90488B????4889??E8????????EB??90EB??90EB??90B8????????4881??????????5BC9C3554889??534881??????????4889??????????E8????????4889??E8????????C7????????????488B??????????8B????89????488B??????????8B??89????488B??????????8B????89????8B????8B????BA????????89??89??E8????????89????83??????0F84????????488D????BA????????BE????????4889??E8????????C7????????????C7????????????8B????89????488B????4889????488B????4889??????488B????4889??????E8????????89????488D????BE????????4889??E8????????488D????8B????BA????????4889??89??E8????????85??0F84????????488D??????????4889??E8????????488D??????????BE????????4889??E8????????488D??????????8B????BA????????4889??89??E8????????85??0F84????????488D????8B????BA????????4889??89??E8????????85??74??488D????BE????????4889??E8????????8B????488B????4889????488B????4889??????488B????4889??????E8????????39??75??8B????83????75??8B????488B????4889????488B????4889??????488B????4889??????89??E8????????EB??90EB??90EB??90EB??90EB??908B????89??E8????????B8????????4881??????????5BC9C390554889??4889????89????C7????????????488B????4889????C7????????????EB??488B????0FB6??8B????89??C1????F7????89??48980FB6??????????89??31??488B????88??83??????4883??????8B????3B????7C??488B????C9C3554889??4889????89????488B????4889????C7????????????EB??488B????0FB6??0FB6??????????31??488B????88??83??????4883??????8B????3B????7C??488B????C9C39090554889??534881??????????89??????????48C7????????????48C7????????????48C7????????????8B????89??488D??????????8B??????????4889??89??E8????????85??0F84????????8B????89??488D??????????89??4889??E8????????488D??????????488D??????????4889??4889??E8????????BA????????488D??????????488D??????????BE????????4889??B8????????E8????????488D??????????4889??E8????????4883????4889??E8????????4889????4883??????0F84????????488D??????????488B????4889??4889??E8????????488D??????????488D????B9????????BA????????4889??4889??E8????????89????83??????0F8E????????C7????????????E9????????488B????8B????4863??48C1????4801??488B??488D????BA????????488D??????????488D??????????4989??BE????????4889??B8????????E8????????488D??????????488D??????????4889??4889??E8????????85??0F85????????48C7????????????48C7????????????488D??????????4883????4889??E8????????4889??E8????????488B??????????8B??????????4189??4181??????????8B??????????89??81??????????488B????8B????4863??48C1????4801??488B??488D????BA????????488D??????????4889??????4889??????488B????4889??????488B????4889????4589??4189??4889??BE????????4889?? }

	condition:
		uint16(0)==0x457f and filesize <1000KB and all of them
}