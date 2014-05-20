package com.tencent.map.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class u extends BroadcastReceiver
{
  u(s params)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((!paramIntent.getBooleanExtra("noConnectivity", false)) && (s.d(this.UF) != null))
      s.d(this.UF).sendEmptyMessage(256);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.u
 * JD-Core Version:    0.6.2
 */