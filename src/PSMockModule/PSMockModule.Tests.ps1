Describe "PSMockModule" -Tag 'Integration' {
    BeforeAll {
    }
    BeforeEach {
    }
    AfterEach {
        $script:stdout | Out-String -Stream | % { $_.Trim() } | ? { $_ } | Write-Host
    }
    It "Runs Mock-Function1" {
        $script:stdout = Mock-Function1 -ErrorVariable script:stderr
        $script:stderr | Should -Be $null
    }
    It "Runs Mock-Function2" {
        $script:stdout = Mock-Function2 -ErrorVariable script:stderr
        $script:stderr | Should -Be $null
    }
}
