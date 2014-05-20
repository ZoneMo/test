package com.tencent.mm.modelvoice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

public class RemoteController$RemoteControlReceiver extends BroadcastReceiver
{
  private static ay cBV;
  private static v cBW;

  public static void Ej()
  {
    cBW = null;
    if (cBV != null)
    {
      cBV.azn();
      cBV = null;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    do
    {
      return;
      if (!"android.intent.action.MEDIA_BUTTON".equals(paramIntent.getAction()))
      {
        aa.d("MicroMsg.RemoteControlReceiver", "unknown action, ignore" + paramIntent.getAction());
        return;
      }
      if ((cBV == null) && (cBW != null))
      {
        aa.d("MicroMsg.RemoteControlReceiver", "got remote key event down");
        cBV = new ay(new w(this), true);
      }
    }
    while (cBV == null);
    cBV.bO(1000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.RemoteController.RemoteControlReceiver
 * JD-Core Version:    0.6.2
 */