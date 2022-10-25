/*
 * Copyright (C) 2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <android-base/logging.h>
#include <android-base/properties.h>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

using android::base::GetProperty;

/*
 * SetProperty does not allow updating read only properties and as a result
 * does not work for our use case. Write "OverrideProperty" to do practically
 * the same thing as "SetProperty" without this restriction.
 */
void OverrideProperty(const char* name, const char* value) {
    size_t valuelen = strlen(value);

    prop_info* pi = (prop_info*)__system_property_find(name);
    if (pi != nullptr) {
        __system_property_update(pi, value, valuelen);
    } else {
        __system_property_add(name, strlen(name), value, valuelen);
    }
}

/*
 * Only for read-only properties. Properties that can be wrote to more
 * than once should be set in a typical init script (e.g. init.oplus.hw.rc)
 * after the original property has been set.
 */
void vendor_load_properties() {
    auto rf_version = std::stoi(GetProperty("ro.boot.rf_version", "0"));
    auto prj_version = std::stoi(GetProperty("ro.boot.prj_version", "0"));


    switch(prj_version){
  	/* OnePlus 8 */
    case 19821:
	OverrideProperty("ro.product.product.device", "OnePlus8");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 8");
  OverrideProperty("ro.oplus.project", "OP8");
      switch (rf_version){
          /* China */
        case 11:
          OverrideProperty("ro.product.product.model", "IN2010");
          break;
        case 13:
          /* India */
          OverrideProperty("ro.product.product.model", "IN2011");
          break;
        case 14:
          /* Europe */
          OverrideProperty("ro.product.product.model", "IN2013");
          break;
        case 15:
          /* Global / US Unlocked */
          OverrideProperty("ro.product.product.model", "IN2015");
          break;
        default:
          /* Generic */
          OverrideProperty("ro.product.product.model", "IN2015");
          break;
      }
      break;
        /* OnePlus 8 T-Mobile */
    case 19855:
	OverrideProperty("ro.product.product.device", "OnePlus8");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 8");
  OverrideProperty("ro.oplus.project", "OP8");
      switch (rf_version){
            /* T-Mobile */
        case 12:
          OverrideProperty("ro.product.product.model", "IN2017");
          break;
            /* Generic */
        default:
          OverrideProperty("ro.product.product.model", "IN2015");
          break;
      }
      break;
        /* OnePlus 8 Verizon */
    case 19867:
  OverrideProperty("ro.product.product.device", "OnePlus8");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 8");
  OverrideProperty("ro.oplus.project", "OP8");
      switch (rf_version){
            /* T-Mobile */
        case 25:
          OverrideProperty("ro.product.product.model", "IN2019");
          break;
            /* Generic */
        default:
          OverrideProperty("ro.product.product.model", "IN2015");
          break;
      }
      break;
        /* OnePlus 8 Pro */
    case 19811:
	OverrideProperty("ro.product.product.device", "OnePlus8Pro");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 8 Pro");
  OverrideProperty("ro.oplus.project", "OP8P");
      switch (rf_version){
          /* China */
        case 11:
          OverrideProperty("ro.product.product.model", "IN2020");
          break;
        case 13:
          /* India */
          OverrideProperty("ro.product.product.model", "IN2021");
          break;
        case 14:
          /* Europe */
          OverrideProperty("ro.product.product.model", "IN2023");
          break;
        case 15:
          /* Global / US Unlocked */
          OverrideProperty("ro.product.product.model", "IN2025");
          break;
        default:
          /* Generic */
          OverrideProperty("ro.product.product.model", "IN2025");
          break;
      }
      break;
       /* OnePlus 8T */
    case 19805:
	OverrideProperty("ro.product.product.device", "OnePlus8T");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 8T");
  OverrideProperty("ro.oplus.project", "OP8T");
      switch (rf_version){
           /* China */
        case 11:
          OverrideProperty("ro.product.product.model", "KB2000");
          break;
            /* India */
        case 13:
          OverrideProperty("ro.product.product.model", "KB2001");
          break;
            /* Europe */
        case 14:
          OverrideProperty("ro.product.product.model", "KB2003");
          break;
            /* Global / US Unlocked */
        case 15:
          OverrideProperty("ro.product.product.model", "KB2005");
          break;
            /* Generic */
        default:
          OverrideProperty("ro.product.product.model", "KB2005");
          break;
      }
      break;
       /* OnePlus 8T T-Mobile */
    case 20809:
	OverrideProperty("ro.product.product.device", "OnePlus8T");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 8T");
  OverrideProperty("ro.oplus.project", "OP8T");
      switch (rf_version){
            /* T-Mobile */
        case 12:
          OverrideProperty("ro.product.product.model", "KB2007");
          break;
            /* Generic */
        default:
          OverrideProperty("ro.product.product.model", "KB2005");
          break;
      }
      break;
      	/* OnePlus 9R */
   case 20828:
	OverrideProperty("ro.product.product.device", "OnePlus9R");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 9R");
  OverrideProperty("ro.oplus.project", "OP9R");
      switch (rf_version){
            /* China */
      case 11:
          OverrideProperty("ro.product.product.model", "LE2100");
          break;
            /* India */
      case 13:
          OverrideProperty("ro.product.product.model", "LE2101");
          break;
            /* Generic */
      default:
          OverrideProperty("ro.product.product.model", "LE2101");
          break;
      }
      break;
   case 20838:
	OverrideProperty("ro.product.product.device", "OnePlus9R");
	OverrideProperty("bluetooth.device.default_name", "OnePlus 9R");
  OverrideProperty("ro.oplus.project", "OP9R");
      switch (rf_version){
            /* China */
      case 11:
          OverrideProperty("ro.product.product.model", "LE2100");
          break;
            /* India */
      case 13:
          OverrideProperty("ro.product.product.model", "LE2101");
          break;
            /* Generic */
      default:
          OverrideProperty("ro.product.product.model", "LE2100");
          break;
      }
      break;
   }
}
