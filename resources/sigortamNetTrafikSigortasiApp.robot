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

Check the all Scenario
    sigortamNetTrafikSigortasi.Check the Empty Input Areas Error
    sigortamNetTrafikSigortasi.Check the Wrong Input Areas Error
    sigortamNetTrafikSigortasi.Check the Incomplete Input Areas Error
    sigortamNetTrafikSigortasi.Check the True Input Areas
