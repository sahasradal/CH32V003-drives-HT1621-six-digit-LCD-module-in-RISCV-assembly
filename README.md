# CH32V003-drives-HT1621-six-digit-LCD-module-in-RISCV-assembly
CH32V003 drives HT1621 six digit LCD module in RISCV assembly
basic code to initialize , clear screen and send font 8 to position 0 with riscv assembly to HT1621 6 digit LCD from aliexpress.
PC3 = CS of HT1621
PC4 = WR of HT1621
PC5 = DATA of HT1621
HT1621 runs on 5V.

HT1621_test.S  is basic frame work which sends letter 8 to screen and clear screen
HT1621_test_ver1.S implements subroutines to send data from a display buffer to the screen,
subroutine to clear screen, subroutines for sending a 16bit number to screen 0-65535,
subroutine to send a signed or unsigned number, subroutine to suppress leading zeros and introducing decimal point







<img width="149" height="148" alt="image" src="https://github.com/user-attachments/assets/616d7bf8-5682-466a-9e1e-8bc9215490c1" />
