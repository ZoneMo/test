package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.tencent.mm.sdk.platformtools.aa;

public class MMReceivers$BootReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramContext == null);
    do
    {
      return;
      new StringBuilder("system booted, pid=").append(Process.myPid()).toString();
    }
    while (h.k(paramContext, "auto"));
    MMReceivers.AlarmReceiver.D(paramContext);
    aa.appenderFlush();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.MMReceivers.BootReceiver
 * JD-Core Version:    0.6.2
 */