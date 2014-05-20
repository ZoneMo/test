package com.tencent.mm.compatible.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

final class f extends BroadcastReceiver
{
  f(e parame)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    String str = paramIntent.getAction();
    e.L(paramIntent.getBooleanExtra("existing", false));
    aa.d("MicroMsg.MMAudioManager", "dkbt onReceive action[" + str + "] existing:" + e.pn());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.f
 * JD-Core Version:    0.6.2
 */