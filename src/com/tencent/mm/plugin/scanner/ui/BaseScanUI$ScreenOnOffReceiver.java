package com.tencent.mm.plugin.scanner.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

public class BaseScanUI$ScreenOnOffReceiver extends BroadcastReceiver
{
  private BaseScanUI ecy = null;

  public BaseScanUI$ScreenOnOffReceiver(BaseScanUI paramBaseScanUI)
  {
    this.ecy = paramBaseScanUI;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    String str;
    do
    {
      do
      {
        do
          return;
        while (this.ecy == null);
        str = paramIntent.getAction();
      }
      while (str == null);
      if ("android.intent.action.SCREEN_ON".equals(str))
      {
        aa.d("MicroMsg.scanner.ScanBaseUI", "ScreenOnOffReceiver ACTION_SCREEN_ON");
        return;
      }
    }
    while (!"android.intent.action.SCREEN_OFF".equals(str));
    aa.d("MicroMsg.scanner.ScanBaseUI", "ScreenOnOffReceiver ACTION_SCREEN_OFF");
    BaseScanUI.a(this.ecy);
    this.ecy.VX();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.BaseScanUI.ScreenOnOffReceiver
 * JD-Core Version:    0.6.2
 */