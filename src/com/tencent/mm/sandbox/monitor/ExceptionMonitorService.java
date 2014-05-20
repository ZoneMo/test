package com.tencent.mm.sandbox.monitor;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import com.tencent.mm.sandbox.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;

public class ExceptionMonitorService extends Service
{
  public static long cjN = 0L;
  public static int gaH = 0;
  private static ExceptionMonitorService gaL = null;
  private long gaI = 300000L;
  private Handler gaJ = new Handler();
  private Runnable gaK = new i(this);

  public static ExceptionMonitorService ayz()
  {
    return gaL;
  }

  public static void bg(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, CrashUploadAlarmReceiver.class);
    if (PendingIntent.getBroadcast(paramContext, 0, localIntent, 536870912) == null)
    {
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
      AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
      long l = 1800000L + cj.FD();
      localAlarmManager.set(0, l, localPendingIntent);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(localPendingIntent.hashCode());
      arrayOfObject[1] = Long.valueOf(l);
      aa.e("MicroMsg.CrashMonitorService", "dkcrash startAlarmMgr pendingIntent:%d %d", arrayOfObject);
    }
  }

  public final void c(Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    this.gaJ.removeCallbacks(this.gaK);
    this.gaJ.postDelayed(this.gaK, this.gaI);
    String str1 = paramIntent.getAction();
    aa.d("MicroMsg.CrashMonitorService", "dkcrash handleCommand action:" + str1);
    if ((str1 != null) && (str1.equals("anr_error")))
    {
      an.b(new b(), 20000L);
      return;
    }
    String str2 = paramIntent.getStringExtra("tag");
    if (str2 == null)
      str2 = "exception";
    int i = paramIntent.getIntExtra("exceptionPid", 0);
    if (i == gaH)
      str2 = "axception";
    gaH = i;
    long l = paramIntent.getLongExtra("exceptionTime", SystemClock.elapsedRealtime());
    if (l - cjN < 3000L);
    for (String str3 = "axception"; ; str3 = str2)
    {
      cjN = l;
      String str4 = paramIntent.getStringExtra("exceptionMsg");
      String str5 = paramIntent.getStringExtra("userName");
      aa.d("MicroMsg.CrashMonitorService", "dkcrash handleCommand. action=" + str1 + " pid:" + i + " tag=" + str3 + ", userName=" + str5 + ", message" + str4);
      if ((cj.hX(str4)) || (d.a(str5, new h(str5, str3, cj.FC(), str4)) != 0))
        break;
      bg(this);
      return;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    gaL = this;
    c.lw(hashCode());
    this.gaJ.postDelayed(this.gaK, this.gaI);
  }

  public void onDestroy()
  {
    super.onDestroy();
    gaL = null;
    c.lx(hashCode());
    this.gaJ.removeCallbacks(this.gaK);
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    c(paramIntent);
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    c(paramIntent);
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.ExceptionMonitorService
 * JD-Core Version:    0.6.2
 */