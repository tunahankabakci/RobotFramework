*** Settings ***
Library    SeleniumLibrary
Resource   ./po/sigortamNetTrafikSigortasi.robot



*** Keywords ***
Go to Trafik Sigortası Teklifi Al Page
    sigortamNetTrafikSigortasi.Go to Homepage
    sigortamNetTrafikSigortasi.Click on Trafik Sigortasi
    sigortamNetTrafikSigortasi.Check the Trafik Sigortasi Page
    sigortamNetTrafikSigortasi.Click on Trafik Sigortası Teklifi Al
    sigortamNetTrafikSigortasi.Check the Trafik Sigortası Teklifi Al Page

Check the empty Scenario
    sigortamNetTrafikSigortasi.Check the Empty Input Areas Error
Check the wrong Scenario
    sigortamNetTrafikSigortasi.Check the Wrong Input Areas Error
Check the incomplete Scenario
    sigortamNetTrafikSigortasi.Check the Incomplete Input Areas Error
Check the true Scenario
    sigortamNetTrafikSigortasi.Check the True Input Areas
