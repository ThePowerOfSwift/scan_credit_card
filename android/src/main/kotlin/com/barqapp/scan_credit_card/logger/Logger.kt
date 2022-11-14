package com.barqapp.scan_credit_card.logger

import android.util.Log
import com.barqapp.scan_credit_card.scanner_core.models.CardScannerOptions

fun debugLog(message: String, scannerOptions: CardScannerOptions, tag: String = "card_scanner_debug_log") {
  if (scannerOptions.enableDebugLogs) {
    Log.d(tag, message)
  }
}