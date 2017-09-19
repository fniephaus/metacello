versions
version10beta323: spec
  <version: '1.0-beta.32.3' imports: #('1.0-beta.32.3-baseline')>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'development'.
      spec
        description:
          '- Avoid loading WebClient/SqueakSSL with older Versions in Squeak images that already have support'.
			spec postLoadDoIt: #metacelloPrimeRegistry.
			spec author: 'topa'.
			spec timestamp: '1/28/2015 00:42' "printIt: [MetacelloPlatform current timestamp]".
			spec project: 'FileTree' with: #stable;
				 project: 'Gofer' with: #stable;
				 project: 'Gofer Tests' with: #stable.
			spec package: 'Metacello-Base' with: 'Metacello-Base-dkh.109';
				 package: 'Metacello-Core' with: 'Metacello-Core-dkh.695';
				 package: 'Metacello-FileTree' with: 'Metacello-FileTree-dkh.29';
				 package: 'Metacello-GitHub' with: 'Metacello-GitHub-dkh.29';
				 package: 'Metacello-MC' with: 'Metacello-MC-dkh.680';
				 package: 'Metacello-Reference' with: 'Metacello-Reference-dkh.36';
				 package: 'Metacello-TestsCommonMC' with: 'Metacello-TestsCommonMC.common-dkh.3';
				 package: 'Metacello-TestsCore' with: 'Metacello-TestsCore-dkh.35';
				 package: 'Metacello-TestsMC' with: 'Metacello-TestsMC-dkh.387';
				 package: 'Metacello-TestsMCA' with: 'Metacello-TestsMCA-dkh.7';
				 package: 'Metacello-TestsMCB' with: 'Metacello-TestsMCB-dkh.13';
				 package: 'Metacello-TestsMCCore' with: 'Metacello-TestsMCCore-dkh.5';
				 package: 'Metacello-TestsMCResources' with: 'Metacello-TestsMCResources-dkh.4';
				 package: 'Metacello-TestsReference' with: 'Metacello-TestsReference-dkh.20';
				 package: 'Metacello-TestsTutorial' with: 'Metacello-TestsTutorial-ChristopheDemarey.41';
				 package: 'Metacello-ToolBox' with: 'Metacello-ToolBox-dkh.134';
				 package: 'Metacello-Tutorial' with: 'Metacello-Tutorial-dkh.26'].
	spec
		for: #squeakCommon
		do: [spec project: 'HelpSystem' with: '1.1'.
			spec package: 'Metacello-TestsPlatform' with: 'Metacello-TestsPlatform.squeakCommon-dkh.11';
				 package: 'Metacello-Help' with: 'Metacello-Help-dkh.12'].
	spec
		for: #pharo
		do: [spec project: 'ProfStef' with: #stable;
				 project: 'OSProcess' with: #stable.
			spec package: 'Metacello-ProfStef' with: 'Metacello-ProfStef-dkh.13';
				 package: 'Metacello-TestsProfStef' with: 'Metacello-TestsProfStef-ChristopheDemarey.5';
				 package: 'Metacello-PharoCommonPlatform' with: 'Metacello-PharoCommonPlatform-dkh.3'].
	spec
		for: #'pharo1.x'
		do: [spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo-dkh.34'].
	spec
		for: #'pharo1.2.x'
		do: [spec package: 'Metacello-Issue3758' with: 'Metacello-Issue3758-dkh.2'].
	spec
		for: #'pharo1.3.x'
		do: [spec package: 'Metacello-Issue3758' with: 'Metacello-Issue3758-dkh.2'].
	spec
		for: #'pharo2.x'
		do: [spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo20-dkh.40';
				 package: 'Metacello-TestsCommonMC' with: 'Metacello-TestsCommonMC.pharo20-dkh.3'].
	spec
		for: #'pharo3.x'
		do: [spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo30-ChristopheDemarey.3';
				 package: 'Metacello-TestsCommonMC' with: 'Metacello-TestsCommonMC.pharo20-dkh.3'].
	spec
		for: #'squeak'
		do: [spec package: 'Metacello-Platform' with: 'Metacello-Platform.squeak-tfel.25'].
	spec
		for: #( #'squeak4.1.x' #'squeak4.2.x' #'squeak4.3.x' #'squeak4.4.x' #'squeak4.5.x' )
		do: [spec project: 'WebClient' with: #stable;
				 package: 'SqueakSSL-Core' with: 'SqueakSSL-Core-ar.26'].
	spec
		for: #gemstone
		do: [spec project: 'GsCore' with: '0.247';
				 project: 'GsMonticello' with: '0.244.2'.
			spec
				package: 'Metacello-MC'
				with: [spec preLoadDoIt: #gemstone10beta24PreLoadDoIt];
				 package: 'Metacello-TestsPlatform' with: 'Metacello-TestsPlatform.gemstone-.6';
				 package: 'Metacello-Platform' with: 'Metacello-Platform.gemstone-dkh.33']