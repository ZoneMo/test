package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public final class t
  implements x
{
  private List fhf = new ArrayList();
  private Vector fhq = new Vector();
  private volatile boolean fhr = false;

  public t()
  {
    ba.PE().a(1, this);
  }

  private void Pa()
  {
    int i = 20;
    if (this.fhr)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppSettingService", "tryDoScene fail, doing Scene");
      return;
    }
    if (this.fhq.size() <= 0)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppSettingService", "tryDoScene fail, appIdList is empty");
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppSettingService", "tryDoScene, appid list size = " + this.fhq.size());
    int j = this.fhq.size();
    if (j > i);
    while (true)
    {
      this.fhr = true;
      this.fhf.addAll(this.fhq.subList(0, i));
      aa localaa = new aa(1, new ai(this.fhf));
      be.uA().d(localaa);
      return;
      i = j;
    }
  }

  public final void a(int paramInt1, int paramInt2, z paramz)
  {
    if (paramz.getType() != 1)
      return;
    this.fhr = false;
    List localList = ((ai)paramz).apZ();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppSettingService", "onSceneEnd, list size = " + localList.size());
    this.fhq.removeAll(this.fhf);
    this.fhf.clear();
    Pa();
  }

  public final void ak(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppSettingService", "addAll list is null");
      return;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((!cj.hX(str)) && (!this.fhq.contains(str)))
        this.fhq.add(str);
    }
    Pa();
  }

  public final void eQ(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppSettingService", "appId = " + paramString);
    if (cj.hX(paramString))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.AppSettingService", "add appId is null");
      return;
    }
    if (!this.fhq.contains(paramString))
      this.fhq.add(paramString);
    Pa();
  }

  public final void stop()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppSettingService", "stop service");
    this.fhq.clear();
    ba.PE().b(1, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.t
 * JD-Core Version:    0.6.2
 */