package com.tencent.mm.modelstat;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.v;
import com.tencent.mm.network.a.a;
import com.tencent.mm.network.a.b;
import com.tencent.mm.network.bk;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public class WatchDogPushReceiver extends BroadcastReceiver
{
  private static String className = "";

  public static void Dh()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.mm.WatchDogPushReceiver");
    localIntent.setComponent(new ComponentName(al.getPackageName(), getClassName()));
    localIntent.putExtra("type", 2);
    al.getContext().sendBroadcast(localIntent);
  }

  public static void Di()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.mm.WatchDogPushReceiver");
    localIntent.setComponent(new ComponentName(al.getPackageName(), getClassName()));
    localIntent.putExtra("type", 3);
    al.getContext().sendBroadcast(localIntent);
  }

  public static void a(c paramc)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.mm.WatchDogPushReceiver");
    localIntent.setComponent(new ComponentName(al.getPackageName(), getClassName()));
    localIntent.putExtra("type", 1);
    localIntent.putExtra("rtType", paramc.rtType);
    localIntent.putExtra("beginTime", paramc.cyD);
    localIntent.putExtra("endTime", paramc.endTime);
    localIntent.putExtra("rtType", paramc.rtType);
    localIntent.putExtra("dataLen", paramc.cyE);
    localIntent.putExtra("isSend", paramc.cpI);
    localIntent.putExtra("cost", paramc.cyG);
    localIntent.putExtra("doSceneCount", paramc.cyF);
    al.getContext().sendBroadcast(localIntent);
  }

  public static void es(int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.mm.WatchDogPushReceiver");
    localIntent.setComponent(new ComponentName(al.getPackageName(), getClassName()));
    localIntent.putExtra("type", 4);
    localIntent.putExtra("timespan", paramInt);
    localIntent.putExtra("username", v.th());
    al.getContext().sendBroadcast(localIntent);
  }

  private static String getClassName()
  {
    if (cj.hX(className))
      className = al.getPackageName() + ".modelstat.WatchDogPushReceiver";
    return className;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null)
      aa.e("MicroMsg.WatchDogPushReceiver", "onReceive intent == null");
    int i;
    do
    {
      return;
      if (bk.Fb() == null)
      {
        aa.e("MicroMsg.WatchDogPushReceiver", "onReceive pushCore is not ready");
        return;
      }
      i = paramIntent.getIntExtra("type", 0);
      aa.d("MicroMsg.WatchDogPushReceiver", "onReceive type:" + i);
      if (i == 1)
      {
        b localb = new b();
        localb.cFJ = paramIntent.getIntExtra("rtType", 0);
        localb.cyD = paramIntent.getLongExtra("beginTime", 0L);
        localb.endTime = paramIntent.getLongExtra("endTime", 0L);
        boolean bool = paramIntent.getBooleanExtra("isSend", false);
        if (!bool)
          localb.cFO = paramIntent.getLongExtra("dataLen", 0L);
        while (true)
        {
          localb.cyG = paramIntent.getLongExtra("cost", 0L);
          localb.cFP = paramIntent.getLongExtra("doSceneCount", 0L);
          aa.d("MicroMsg.WatchDogPushReceiver", "onRecv: rtType:" + localb.cFJ + " isSend:" + bool + " tx:" + localb.cFN + " rx:" + localb.cFO + " begin:" + localb.cyD + " end:" + localb.endTime);
          if ((localb.cFP != 0L) && (localb.cFJ != 0L) && (localb.cyD != 0L) && (localb.endTime != 0L) && (localb.endTime - localb.cyD > 0L))
            break;
          aa.w("MicroMsg.WatchDogPushReceiver", "onRecv: count:" + localb.cFP + " rtType:" + localb.cFJ + " begin:" + localb.cyD + " end:" + localb.endTime);
          return;
          localb.cFN = paramIntent.getLongExtra("dataLen", 0L);
        }
        bk.Fb().a(10401, null, localb);
        return;
      }
      if (i == 2)
      {
        ((l)bk.Fb()).Da();
        return;
      }
      if (i == 3)
      {
        bk.Fb().a(99999, null, null);
        return;
      }
    }
    while (i != 4);
    bk.Fb().a(99998, paramIntent.getStringExtra("username"), Integer.valueOf(paramIntent.getIntExtra("timespan", -1)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.WatchDogPushReceiver
 * JD-Core Version:    0.6.2
 */