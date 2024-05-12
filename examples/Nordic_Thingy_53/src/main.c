 
 #include <nrfx.h>


#define LED_GREEN     (1 << 6)  // P1.06 GREEN
#define LED_BLUE      (1 << 7)  // P1.07 BLUE
#define LED_RED       (1 << 8)  // P1.08 RED


static void wait(int time) {
  while(time--) {
  }
}


int main(void) {


  NRF_P1_S->DIRSET = LED_GREEN | LED_BLUE | LED_RED;




  while (1) {
    NRF_P1_S->OUTSET = LED_GREEN;
    wait(5000000);
    NRF_P1_S->OUTCLR = LED_GREEN;
    NRF_P1_S->OUTSET = LED_BLUE;
    wait(5000000);
    NRF_P1_S->OUTCLR = LED_BLUE;
    NRF_P1_S->OUTSET = LED_RED;
    wait(5000000);
    NRF_P1_S->OUTCLR = LED_RED;
  }
}