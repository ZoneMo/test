package com.tencent.mm.jni.platformcomm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Pair;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.TreeSet;

public class Alarm extends BroadcastReceiver
{
  private static WakerLock cgu = null;
  private static TreeSet cgv = new TreeSet(new b((byte)0));

  public static void H(Context paramContext)
  {
    synchronized (cgv)
    {
      I(paramContext);
      cgv.clear();
      return;
    }
  }

  private static boolean I(Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager == null)
    {
      aa.e("MicroMsg.Alarm", "am == null");
      return false;
    }
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 1, new Intent(paramContext, Alarm.class), 536870912);
    if (localPendingIntent != null)
    {
      localAlarmManager.cancel(localPendingIntent);
      localPendingIntent.cancel();
    }
    return true;
  }

  public static boolean a(int paramInt1, int paramInt2, Context paramContext)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.Alarm", "id=%d, after=%d", arrayOfObject1);
    if (paramInt2 < 0)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt2);
      aa.b("MicroMsg.Alarm", "after=%d", arrayOfObject3);
      return false;
    }
    if (paramContext == null)
    {
      aa.e("MicroMsg.Alarm", "context==null");
      return false;
    }
    if (cgu == null)
    {
      cgu = new WakerLock(paramContext);
      aa.d("MicroMsg.Alarm", "start new wakerlock");
    }
    synchronized (cgv)
    {
      Iterator localIterator = cgv.iterator();
      while (localIterator.hasNext())
        if (((Integer)((Pair)localIterator.next()).second).intValue() == paramInt1)
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(paramInt1);
          aa.b("MicroMsg.Alarm", "id exist=%d", arrayOfObject2);
          return false;
        }
      long l = SystemClock.elapsedRealtime() + paramInt2;
      if (cgv.size() == 0)
        a(paramInt1, l, paramContext);
      while (l >= ((Long)((Pair)cgv.first()).first).longValue())
      {
        cgv.add(new Pair(Long.valueOf(l), Integer.valueOf(paramInt1)));
        return true;
      }
      a(paramInt1, l, paramContext);
    }
  }

  private static boolean a(int paramInt, long paramLong, Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager == null)
    {
      aa.e("MicroMsg.Alarm", "am == null");
      return false;
    }
    I(paramContext);
    if (paramLong >= SystemClock.elapsedRealtime());
    for (long l = paramLong; ; l = SystemClock.elapsedRealtime())
    {
      Intent localIntent = new Intent(paramContext, Alarm.class);
      localIntent.putExtra("ID", paramInt);
      localIntent.putExtra("WAIT_TIME", paramLong);
      localAlarmManager.set(2, l, PendingIntent.getBroadcast(paramContext, 1, localIntent, 268435456));
      return true;
    }
  }

  public static boolean a(int paramInt, Context paramContext)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.d("MicroMsg.Alarm", "id=%d", arrayOfObject);
    if (paramContext == null)
    {
      aa.e("MicroMsg.Alarm", "context==null");
      return false;
    }
    if (cgu == null)
    {
      cgu = new WakerLock(paramContext);
      aa.d("MicroMsg.Alarm", "stop new wakerlock");
    }
    synchronized (cgv)
    {
      Iterator localIterator = cgv.iterator();
      int i = 0;
      boolean bool1 = localIterator.hasNext();
      boolean bool2 = false;
      if (bool1)
      {
        if (((Integer)((Pair)localIterator.next()).second).intValue() == paramInt)
        {
          localIterator.remove();
          bool2 = true;
        }
      }
      else
      {
        if ((bool2) && (i == 0))
        {
          I(paramContext);
          if (cgv.size() > 0)
            a(((Integer)((Pair)cgv.first()).second).intValue(), ((Long)((Pair)cgv.first()).first).longValue(), paramContext);
        }
        return bool2;
      }
      i++;
    }
  }

  private native void onAlarm(int paramInt);

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("ID", 0);
    long l = paramIntent.getLongExtra("WAIT_TIME", 0L);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(i);
    arrayOfObject1[1] = Long.valueOf(l);
    aa.d("MicroMsg.Alarm", "onReceive id=%d, waittime=%d", arrayOfObject1);
    synchronized (cgv)
    {
      if (cgv.size() == 0)
      {
        aa.w("MicroMsg.Alarm", "onReceive 0==alarm_waiting_set.size()");
        return;
      }
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = ((Pair)cgv.first()).second;
      arrayOfObject2[1] = ((Pair)cgv.first()).first;
      aa.e("MicroMsg.Alarm", "onReceive alarm_waiting_set.first() id=%d, waittime=%d", arrayOfObject2);
      if ((SystemClock.elapsedRealtime() < ((Long)((Pair)cgv.first()).first).longValue()) && ((l != ((Long)((Pair)cgv.first()).first).longValue()) || (i != ((Integer)((Pair)cgv.first()).second).intValue())))
      {
        aa.w("MicroMsg.Alarm", "first!= intent");
        return;
      }
    }
    Iterator localIterator = cgv.iterator();
    localIterator.next();
    localIterator.remove();
    if (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = localPair.second;
      arrayOfObject3[1] = localPair.first;
      aa.d("MicroMsg.Alarm", "setAlarmMgr next id=%d, waittime=%d", arrayOfObject3);
      a(((Integer)localPair.second).intValue(), ((Long)localPair.first).longValue(), paramContext);
    }
    if (cgu != null)
      cgu.lock(500L);
    new Thread(new a(this, i)).start();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.jni.platformcomm.Alarm
 * JD-Core Version:    0.6.2
 */