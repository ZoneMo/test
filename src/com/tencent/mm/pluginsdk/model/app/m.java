package com.tencent.mm.pluginsdk.model.app;

import android.content.Context;
import com.tencent.mm.model.as;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class m
  implements as, com.tencent.mm.n.m, x
{
  private List fhf = null;
  private List fhg = null;
  private Map fhh = null;
  private ay fhi = new ay(new n(this), false);
  private List fhk = new ArrayList();
  private List fhl = new ArrayList();
  private volatile boolean fhm = false;

  public m()
  {
    this.fhi.bO(600000L);
    be.uA().a(231, this);
    ba.PE().a(7, this);
  }

  private void apR()
  {
    int i = 20;
    if (this.fhm)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppInfoService", " batch get appinfo doing now");
      return;
    }
    if ((this.fhk == null) || (this.fhk.isEmpty()))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppInfoService", "batchwaitinglist is empty, no need to doscene");
      return;
    }
    int j = this.fhk.size();
    if (j > i);
    while (true)
    {
      this.fhl.addAll(this.fhk.subList(0, i));
      if ((this.fhl == null) || (this.fhl.isEmpty()))
        break;
      this.fhm = true;
      aa localaa = new aa(7, new ah(this.fhl));
      be.uA().d(localaa);
      return;
      i = j;
    }
  }

  private void is(String paramString)
  {
    try
    {
      if ((!cj.hX(paramString)) && (!this.fhk.contains(paramString)))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppInfoService", "add appid:[%s]", new Object[] { paramString });
        this.fhk.add(paramString);
      }
      while (true)
      {
        return;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppInfoService", "should not add this appid:[%s], it is already runing", new Object[] { paramString });
      }
    }
    finally
    {
    }
  }

  public final void Q(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "batch push appinfo err: null or nil applist");
      return;
    }
    Iterator localIterator = paramLinkedList.iterator();
    while (localIterator.hasNext())
      is((String)localIterator.next());
    apR();
  }

  public final void a(int paramInt1, int paramInt2, z paramz)
  {
    if (paramz.getType() != 7)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppInfoService", "not the getappinfolist scene, ignore");
      return;
    }
    if ((this.fhl != null) && (!this.fhl.isEmpty()))
    {
      this.fhk.removeAll(this.fhl);
      this.fhl.clear();
    }
    this.fhm = false;
    apR();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    int i = paramx.getType();
    switch (i)
    {
    default:
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "error type: " + i);
    case 231:
      do
      {
        return;
        String str1 = ((ag)paramx).getAppId();
        if (this.fhf.contains(str1))
          this.fhf.remove(str1);
      }
      while (this.fhg.size() <= 0);
      String str2 = (String)this.fhg.remove(0);
      int j;
      if ((str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "startDownload fail, appId is null");
        j = 0;
      }
      while (j != 0)
      {
        this.fhf.add(str2);
        return;
        int k;
        if (str2 == null)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "increaseCounter fail, appId is null");
          k = 0;
        }
        while (true)
        {
          if (k != 0)
            break label269;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "increaseCounter fail");
          j = 0;
          break;
          Integer localInteger = Integer.valueOf(cj.a((Integer)this.fhh.get(str2), 0));
          if (localInteger.intValue() >= 5)
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "increaseCounter fail, has reached the max try count");
            k = 0;
          }
          else
          {
            this.fhh.put(str2, Integer.valueOf(1 + localInteger.intValue()));
            k = 1;
          }
        }
        label269: ag localag = new ag(str2);
        be.uA().d(localag);
        j = 1;
      }
    case 451:
    }
    if ((this.fhl != null) && (!this.fhl.isEmpty()))
    {
      this.fhk.removeAll(this.fhl);
      this.fhl.clear();
    }
    this.fhm = false;
    apR();
  }

  public final String f(Context paramContext, String paramString)
  {
    return l.f(paramContext, paramString);
  }

  public final void qn(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppInfoService", "push fail, appId is null");
      return;
    }
    is(paramString);
    apR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.m
 * JD-Core Version:    0.6.2
 */