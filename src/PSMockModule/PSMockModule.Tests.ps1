Describe "PSMockModule" -Tag 'Integration' {
    BeforeAll {
        $ErrorView = 'NormalView'
    }
    BeforeEach {
    }
    AfterEach {
        $script:stdout | Out-String -Stream | % { $_.Trim() } | ? { $_ } | Write-Host
    }
    It "Runs Mock-Function1" {
        $script:stdout = Mock-Function1 -ErrorAction Stop
    }
    It "Runs Mock-Function2" {
        $script:stdout = Mock-Function2 -ErrorAction Stop
    }
}
