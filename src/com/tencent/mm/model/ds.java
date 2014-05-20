package com.tencent.mm.model;

import com.tencent.mm.e.a;
import com.tencent.mm.e.c;
import com.tencent.mm.e.d;
import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.platformtools.ac;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.by;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class ds
  implements j
{
  private Map cjZ = new HashMap();
  private Map cka = new HashMap();

  private void a(String paramString, com.tencent.mm.protocal.a.l paraml, boolean paramBoolean)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = an.a(paraml.fzv);
    arrayOfObject1[2] = Boolean.valueOf(paramBoolean);
    aa.d("MicroMsg.SysCmdMsgExtension", "key is %s, content is %s, isNewXml : %s", arrayOfObject1);
    Map localMap;
    List localList;
    if (paramBoolean)
    {
      localMap = this.cka;
      localList = (List)localMap.get(paramString);
      if ((localList != null) && (!localList.isEmpty()))
        break label94;
      aa.w("MicroMsg.SysCmdMsgExtension", "listener list is empty, return now");
    }
    while (true)
    {
      return;
      localMap = this.cjZ;
      break;
      label94: Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(localList.size());
      aa.d("MicroMsg.SysCmdMsgExtension", "listener list size is %d", arrayOfObject2);
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        ((dt)localIterator.next()).b(paraml);
    }
  }

  public final k a(com.tencent.mm.protocal.a.l paraml)
  {
    switch (paraml.fzu)
    {
    default:
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paraml.fzu);
      aa.c("MicroMsg.SysCmdMsgExtension", "cmdAM msgType is %d, ignore, return now", arrayOfObject);
      return null;
    case 10001:
      String str8 = an.a(paraml.fzs);
      an.a(paraml.fzv);
      a(str8, paraml, false);
      m.dZN.j(10395, String.valueOf(paraml.fzo));
      return null;
    case 10002:
    }
    String str1 = an.a(paraml.fzv);
    Object localObject2;
    Object localObject1;
    j localj;
    if (str1.startsWith("~SEMI_XML~"))
    {
      Map localMap2 = by.sM(str1);
      if (localMap2 == null)
      {
        aa.b("MicroMsg.SysCmdMsgExtension", "SemiXml values is null, msgContent %s", new Object[] { str1 });
        return null;
      }
      localObject2 = "brand_service";
      localObject1 = localMap2;
      aa.e("MicroMsg.SysCmdMsgExtension", "recieve a syscmd_newxml %s", new Object[] { str1 });
      if (localObject2 != null)
        a((String)localObject2, paraml, true);
      if ((localObject2 == null) || (!((String)localObject2).equals("addcontact")))
        break label541;
      paraml.fzv = an.hQ((String)((Map)localObject1).get(".sysmsg.addcontact.content"));
      localj = com.tencent.mm.n.l.T(Integer.valueOf(1));
      if (localj != null)
        break label498;
    }
    label541: for (k localk = null; ; localk = null)
      while (true)
      {
        if ((localObject2 != null) && (((String)localObject2).equals("dynacfg")))
        {
          d.qA().a(str1, (Map)localObject1);
          d.qB();
          if (a.qo() == 2)
            m.dZN.j(10879, "");
        }
        String str3;
        String str4;
        String str5;
        if ((localObject2 != null) && (((String)localObject2).equals("banner")))
        {
          str3 = (String)((Map)localObject1).get(".sysmsg.mainframebanner.$type");
          str4 = (String)((Map)localObject1).get(".sysmsg.mainframebanner.showtype");
          str5 = (String)((Map)localObject1).get(".sysmsg.mainframebanner.data");
          if ((str3 == null) || (str3.length() <= 0));
        }
        try
        {
          br.uP().a(new ac().eP(Integer.valueOf(str4).intValue()).eO(Integer.valueOf(str3).intValue()).hO(str5).FA());
          String str6 = (String)((Map)localObject1).get(".sysmsg.friendrecommand.fromuser");
          str7 = (String)((Map)localObject1).get(".sysmsg.friendrecommand.touser");
          if ((str6 == null) || (str7 == null));
        }
        catch (Exception localException2)
        {
          try
          {
            String str7;
            s.te().a(str7, Boolean.valueOf(true));
            return localk;
            Map localMap1 = u.aL(str1, "sysmsg");
            if (localMap1 == null)
            {
              aa.b("MicroMsg.SysCmdMsgExtension", "KVConfig values is null, msgContent %s", new Object[] { str1 });
              return null;
            }
            String str2 = (String)localMap1.get(".sysmsg.$type");
            localObject1 = localMap1;
            localObject2 = str2;
            break;
            label498: localk = localj.a(paraml);
            continue;
            localException2 = localException2;
            aa.e("MicroMsg.SysCmdMsgExtension", localException2.toString());
          }
          catch (Exception localException1)
          {
            while (true)
              aa.e("MicroMsg.SysCmdMsgExtension", localException1.toString());
          }
        }
      }
  }

  public final void a(String paramString, dt paramdt)
  {
    a(paramString, paramdt, false);
  }

  public final void a(String paramString, dt paramdt, boolean paramBoolean)
  {
    if ((cj.hX(paramString)) || (paramdt == null))
      return;
    if (paramBoolean);
    for (Map localMap = this.cka; ; localMap = this.cjZ)
    {
      Object localObject = (List)localMap.get(paramString);
      if (localObject == null)
      {
        localObject = new LinkedList();
        localMap.put(paramString, localObject);
      }
      if (((List)localObject).contains(paramdt))
        break;
      ((List)localObject).add(paramdt);
      return;
    }
  }

  public final void b(String paramString, dt paramdt)
  {
    if ((cj.hX(paramString)) || (paramdt == null));
    List localList;
    do
    {
      return;
      localList = (List)this.cka.get(paramString);
    }
    while (localList == null);
    localList.remove(paramdt);
  }

  public final void c(ak paramak)
  {
  }

  public final void c(String paramString, dt paramdt)
  {
    a(paramString, paramdt, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ds
 * JD-Core Version:    0.6.2
 */