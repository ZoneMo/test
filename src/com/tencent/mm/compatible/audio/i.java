package com.tencent.mm.compatible.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.compatible.b.a;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;

final class i extends BroadcastReceiver
{
  i(e parame)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    int i;
    do
    {
      return;
      String str = paramIntent.getAction();
      i = paramIntent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
      aa.d("MicroMsg.MMAudioManager", "dkbt onReceive action[" + str + "] state:" + i);
      if (i == 2)
      {
        e.M(true);
        return;
      }
    }
    while (i != 0);
    if (s.ceN.cdP == 1)
      a.a(e.a(this.cbp));
    e.M(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.i
 * JD-Core Version:    0.6.2
 */