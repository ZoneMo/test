package com.tencent.mm.plugin.search.model;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

final class aw extends BroadcastReceiver
{
  aw(at paramat)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getAction() == null));
    do
    {
      return;
      aa.i("MicroMsg.SubCoreSearch", "*** Charging notified: " + paramIntent.getAction());
      if (paramIntent.getAction().equals("android.intent.action.ACTION_POWER_CONNECTED"))
      {
        at.b(this.eiw, true);
        return;
      }
    }
    while (!paramIntent.getAction().equals("android.intent.action.ACTION_POWER_DISCONNECTED"));
    at.b(this.eiw, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.aw
 * JD-Core Version:    0.6.2
 */