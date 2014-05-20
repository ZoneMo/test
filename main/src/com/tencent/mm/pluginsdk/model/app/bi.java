package com.tencent.mm.pluginsdk.model.app;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.e.d;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ah;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class bi
  implements x
{
  private static bi fie;
  private boolean doY = false;
  private String doZ;
  public bj fif;
  private long fig;

  public static bi aqk()
  {
    if (fie == null)
      fie = new bi();
    return fie;
  }

  public final void a(int paramInt1, int paramInt2, z paramz)
  {
    if (!be.se());
    do
    {
      return;
      this.doY = false;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      aa.e("MicroMsg.SuggestionAppListLogic", "Suggestion onSceneEnd errType=%s errCode=%s", arrayOfObject1);
      if (paramz == null)
      {
        aa.e("MicroMsg.SuggestionAppListLogic", "scene == null");
        return;
      }
    }
    while ((paramInt1 != 0) || (paramInt2 != 0));
    switch (paramz.getType())
    {
    default:
      return;
    case 4:
    }
    aj localaj = (aj)paramz;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(localaj.aqb());
    aa.e("MicroMsg.SuggestionAppListLogic", "get suggestion appList, AppCount = %s", arrayOfObject2);
    LinkedList localLinkedList1 = localaj.aqc();
    if ((localLinkedList1 == null) || (localLinkedList1.size() <= 0))
    {
      aa.w("MicroMsg.SuggestionAppListLogic", "empty suggestAppList");
      return;
    }
    if ((al.getContext() == null) || (h.app() == null))
    {
      aa.e("MicroMsg.SuggestionAppListLogic", "wrong environment");
      return;
    }
    LinkedList localLinkedList2 = new LinkedList();
    Iterator localIterator1 = localLinkedList1.iterator();
    if (localIterator1.hasNext())
    {
      k localk3 = (k)localIterator1.next();
      Object[] arrayOfObject3 = new Object[5];
      arrayOfObject3[0] = localk3.field_appName;
      arrayOfObject3[1] = localk3.field_packageName;
      arrayOfObject3[2] = localk3.field_signature;
      arrayOfObject3[3] = localk3.bSK;
      if (localk3.bSJ != null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject3[4] = Boolean.valueOf(bool);
        aa.e("MicroMsg.SuggestionAppListLogic", "suggestion appName=%s, packageName=%s, signature [%s], introUrl [%s], has iconUrl [%s]", arrayOfObject3);
        localLinkedList2.add(localk3.field_appId);
        break;
      }
    }
    h.app().P(localLinkedList2);
    List localList = l.aS(al.getContext());
    o localo;
    Iterator localIterator2;
    if ((localList != null) && (localList.size() > 0))
    {
      localo = h.app().apw();
      localIterator2 = localList.iterator();
    }
    label522: 
    while (true)
    {
      k localk1;
      if (localIterator2.hasNext())
      {
        localk1 = (k)localIterator2.next();
        if (localk1.field_appId != null)
        {
          Iterator localIterator3 = localLinkedList1.iterator();
          k localk2;
          do
          {
            if (!localIterator3.hasNext())
              break;
            localk2 = (k)localIterator3.next();
          }
          while ((localk2.field_appId == null) || (!localk1.field_appId.equals(localk2.field_appId)));
        }
      }
      else
      {
        for (int i = 1; ; i = 0)
        {
          if (i != 0)
            break label522;
          if (l.b(al.getContext(), localk1));
          for (localk1.field_status = 1; ; localk1.field_status = 4)
          {
            localo.a(localk1, new String[0]);
            break;
          }
          al.getContext().getSharedPreferences(al.azs(), 0).edit().putLong("LAST_GET_SUGGEST_APP_LIST_TIME", System.currentTimeMillis()).commit();
          this.fig = System.currentTimeMillis();
          return;
        }
      }
    }
  }

  public final void a(Context paramContext, bj parambj)
  {
    if (!be.se());
    while (paramContext == null)
      return;
    try
    {
      String str = d.qA().getValue("ShowAPPSuggestion");
      if ((cj.hX(str)) || (Integer.valueOf(str).intValue() != 1))
      {
        aa.c("MicroMsg.SuggestionAppListLogic", "cfgShowAppSuggestion %s, return", new Object[] { str });
        return;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.b("MicroMsg.SuggestionAppListLogic", "exception in getSuggestionAppList, %s", arrayOfObject);
      if (this.doY)
      {
        aa.d("MicroMsg.SuggestionAppListLogic", "Suggestion is mLoading, return");
        return;
      }
      this.doY = true;
      this.fif = parambj;
      if (System.currentTimeMillis() - this.fig < 43200000L)
      {
        aa.d("MicroMsg.SuggestionAppListLogic", "Suggestion not now");
        this.doY = false;
        return;
      }
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(al.azs(), 0);
      this.fig = localSharedPreferences.getLong("LAST_GET_SUGGEST_APP_LIST_TIME", 0L);
      if (System.currentTimeMillis() - this.fig < 43200000L)
      {
        aa.d("MicroMsg.SuggestionAppListLogic", "Suggestion not now pp");
        this.doY = false;
        return;
      }
      if (this.doZ == null)
        this.doZ = com.tencent.mm.sdk.platformtools.z.a(localSharedPreferences);
      aj localaj = new aj(3, 0, 20, this.doZ, new LinkedList());
      ba.PE();
      c.a(4, localaj);
    }
  }

  public final void aql()
  {
    if (!be.se())
      return;
    ba.PE().b(4, this);
    this.doY = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.bi
 * JD-Core Version:    0.6.2
 */