package com.tencent.mm.plugin.shootstub.communicate;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.m.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.plugin.shootstub.a.a;
import com.tencent.mm.plugin.shootstub.a.l;
import com.tencent.mm.plugin.shootstub.a.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.Iterator;

public class ReqReceiver extends BroadcastReceiver
{
  private static void a(int paramInt, a parama)
  {
    Bundle localBundle = new Bundle();
    parama.h(localBundle);
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(al.getPackageName(), "com.tencent.mm.plugin.shoot.remote.RemoteNetSceneMgr$RespReceiver"));
    localIntent.putExtra("remote_request_type_key", 1);
    localIntent.putExtra("remote_event_id_key", paramInt);
    localIntent.putExtras(localBundle);
    al.getContext().sendBroadcast(localIntent);
  }

  private static void l(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("remote_event_id_key", 0);
    if (i <= 0)
      aa.e("MicroMsg.ReqReceiver", "edw dealEvent fail, invalid eventId = " + i);
    l locall;
    ArrayList localArrayList1;
    do
    {
      return;
      aa.d("MicroMsg.ReqReceiver", "dealEvent, eventId = " + i);
      switch (i)
      {
      default:
        return;
      case 1:
        m localm = new m();
        Bundle localBundle = paramIntent.getExtras();
        localm.username = localBundle.getString("RemoteEventGetUserInfo_result_username");
        localm.crH = localBundle.getString("RemoteEventGetUserInfo_result_nickname");
        localm.cTv = localBundle.getString("RemoteEventGetUserInfo_result_displayName");
        localm.username = v.th();
        localm.crH = v.tj();
        a(i, localm);
        return;
      case 2:
      }
      locall = new l();
      locall.i(paramIntent.getExtras());
      localArrayList1 = locall.etS;
    }
    while ((localArrayList1 == null) || (localArrayList1.size() <= 0));
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList2.add(be.uz().su().tO(str).rr());
      localArrayList3.add(c.dW(str));
    }
    locall.eqW = localArrayList2;
    locall.etT = localArrayList3;
    a(i, locall);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("remote_request_type_key", 0);
    if (i <= 0)
    {
      aa.e("MicroMsg.ReqReceiver", "edw onReceive fail, invalid type = " + i);
      return;
    }
    aa.d("MicroMsg.ReqReceiver", "edw onReceive, type = " + i);
    switch (i)
    {
    default:
      return;
    case 1:
    }
    l(paramIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.communicate.ReqReceiver
 * JD-Core Version:    0.6.2
 */