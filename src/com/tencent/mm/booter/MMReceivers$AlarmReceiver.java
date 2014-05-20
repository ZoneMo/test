package com.tencent.mm.booter;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ag;

public class MMReceivers$AlarmReceiver extends BroadcastReceiver
{
  public static void A(Context paramContext)
  {
    long l1 = ag.azl();
    aa.d("MicroMsg.AlarmReceiver", "bumper comes, next=" + l1);
    if (l1 > 1860000L)
      return;
    if (l1 < 30000L);
    for (long l2 = 30000L; ; l2 = l1)
    {
      aa.w("MicroMsg.AlarmReceiver", "reset bumper, interval=" + l2);
      AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
      if (localAlarmManager == null)
      {
        aa.e("MicroMsg.AlarmReceiver", "keep bumper failed, null am");
        return;
      }
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 1, new Intent(paramContext, AlarmReceiver.class).putExtra("MMBoot_Bump", true), 268435456);
      localAlarmManager.set(0, l2 + System.currentTimeMillis(), localPendingIntent);
      return;
    }
  }

  public static void B(Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager == null)
      aa.e("MicroMsg.AlarmReceiver", "stop bumper failed, null am");
    PendingIntent localPendingIntent;
    do
    {
      return;
      localPendingIntent = PendingIntent.getBroadcast(paramContext, 1, new Intent(paramContext, AlarmReceiver.class).putExtra("MMBoot_Bump", true), 536870912);
    }
    while (localPendingIntent == null);
    localAlarmManager.cancel(localPendingIntent);
    localPendingIntent.cancel();
  }

  public static void C(Context paramContext)
  {
    aa.w("MicroMsg.AlarmReceiver", "keep awaker");
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager == null)
    {
      aa.e("MicroMsg.AlarmReceiver", "keep awaker failed, null am");
      return;
    }
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, AlarmReceiver.class), 268435456);
    localAlarmManager.setRepeating(0, 900000L + System.currentTimeMillis(), 900000L, localPendingIntent);
  }

  public static void D(Context paramContext)
  {
    aa.w("MicroMsg.AlarmReceiver", "stop awaker");
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager == null)
      aa.e("MicroMsg.AlarmReceiver", "keep awaker failed, null am");
    PendingIntent localPendingIntent;
    do
    {
      return;
      localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, AlarmReceiver.class), 536870912);
    }
    while (localPendingIntent == null);
    localAlarmManager.cancel(localPendingIntent);
    localPendingIntent.cancel();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null));
    do
    {
      return;
      boolean bool = paramIntent.getBooleanExtra("MMBoot_Bump", false);
      aa.i("MicroMsg.AlarmReceiver", "[ALARM NOTIFICATION] bump:" + bool);
      if (bool)
      {
        A(paramContext);
        return;
      }
    }
    while (h.k(paramContext, "alarm"));
    D(paramContext);
    aa.appenderFlush();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.MMReceivers.AlarmReceiver
 * JD-Core Version:    0.6.2
 */