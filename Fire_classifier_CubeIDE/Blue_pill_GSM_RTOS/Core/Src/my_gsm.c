/*
 * my_gsm.c
 *
 *  Created on: 06-Jun-2023
 *      Author: SOUMYA
 */

#include <my_gsm.h>

bool gsm_init(void){
  if (gsm.inited == 1)
    return true;

  gsm_printf("[GSM] init begin\r\n");
  HAL_GPIO_WritePin(_GSM_KEY_GPIO, _GSM_KEY_PIN, GPIO_PIN_SET);
  gsm_delay(3000);
  memset(&gsm, 0, sizeof(gsm));
  atc_init(&gsm.atc, "GSM ATC", _GSM_USART, gsm_found);
  if (atc_addSearch(&gsm.atc, "POWER DOWN\r\n") == false)
    return false;
  if (atc_addSearch(&gsm.atc, "\r\n+CREG:") == false)
    return false;
#if (_GSM_CALL == 1)
  if (atc_addSearch(&gsm.atc, "\r\n+CLIP:") == false)
    return false;
  if (atc_addSearch(&gsm.atc, "\r\nNO CARRIER\r\n") == false)
    return false;
  if (atc_addSearch(&gsm.atc, "\r\n+DTMF:") == false)
    return false;
#endif

#if (_GSM_MSG == 1)
  if (atc_addSearch(&gsm.atc, "\r\n+CMTI:") == false)
    return false;
  gsm.msg.newMsg = -1;
#endif

#if (_GSM_GPRS == 1)
  if (atc_addSearch(&gsm.atc, "\r\nCLOSED\r\n") == false)
    return false;
  if (atc_addSearch(&gsm.atc, "\r\n+CIPRXGET: 1\r\n") == false)
    return false;
   if (atc_addSearch(&gsm.atc, "\r\n+SMSTATE: ") == false)
    return false;
   if (atc_addSearch(&gsm.atc, "\r\n+SMPUBLISH: ") == false)
    return false;
#endif

#if (_GSM_BLUETOOTH == 1)

#endif

  gsm_delay(1000);
  gsm_printf("[GSM] init done\r\n");
  gsm.inited = 1;
  return true;
}
