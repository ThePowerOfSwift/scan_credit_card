package com.sam961.card_scanner.logger

import android.util.Log
import com.sam961.card_scanner.scanner_core.models.CardScannerOptions

fun debugLog(message: String, scannerOptions: CardScannerOptions, tag: String = "card_scanner_debug_log") {
  if (scannerOptions.enableDebugLogs) {
    Log.d(tag, message)
  }
}