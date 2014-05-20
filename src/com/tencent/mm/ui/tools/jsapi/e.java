package com.tencent.mm.ui.tools.jsapi;

import android.app.Activity;
import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.plugin.webview.b.d;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.x;
import com.tencent.mm.pluginsdk.model.app.z;
import com.tencent.mm.protocal.a.bu;
import com.tencent.mm.protocal.a.bw;
import com.tencent.mm.protocal.a.mb;
import com.tencent.mm.protocal.a.tk;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class e
  implements x
{
  private Context context;
  private HashMap hoQ = new HashMap();
  private HashMap hoR = new HashMap();
  private String hoS = "";

  private void a(String paramString1, bw parambw, String paramString2, String paramString3, h paramh)
  {
    if (paramString1 == null)
      paramh.a(i.hpa);
    do
    {
      return;
      if ((parambw == null) || (cj.hX(paramString1)))
      {
        aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH showDlgForJSOAuth wrong args");
        paramh.a(i.hpa);
        return;
      }
      if ((this.context == null) || (!(this.context instanceof Activity)))
      {
        aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH context not activity");
        paramh.a(i.hpa);
        return;
      }
    }
    while (com.tencent.mm.ui.base.h.a(this.context, false, cj.hW(paramString2) + cj.hW(parambw.fCC), "", this.context.getString(n.bpr), this.context.getString(n.bpq), new f(this, parambw, paramString1, paramString3, paramh), new g(this, paramh)) != null);
    paramh.a(i.hpa);
  }

  public final void a(int paramInt1, int paramInt2, z paramz)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(paramz.getType());
    arrayOfObject1[1] = Integer.valueOf(paramInt1);
    arrayOfObject1[2] = Integer.valueOf(paramInt2);
    arrayOfObject1[3] = this.hoS;
    aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH onSceneEnd: type[%d], errType[%s], errCode[%s], currentApi[%s]", arrayOfObject1);
    int i = paramz.getType();
    switch (i)
    {
    default:
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = Integer.valueOf(i);
      aa.b("MicroMsg.JSOAuthHelper", "onSceneEnd, unknown type = %d", arrayOfObject7);
      return;
    case 12:
      ba.PE().b(12, this);
      com.tencent.mm.plugin.webview.b.c localc = (com.tencent.mm.plugin.webview.b.c)paramz;
      Object localObject = localc.ge();
      h localh;
      Object[] arrayOfObject6;
      if ((localObject instanceof h))
      {
        localh = (h)localObject;
        if (localh == null)
        {
          arrayOfObject6 = new Object[1];
          if (localObject != null)
            break label202;
        }
      }
      label202: for (String str3 = "null"; ; str3 = localObject.getClass().getName())
      {
        arrayOfObject6[0] = str3;
        aa.b("MicroMsg.JSOAuthHelper", "dealJSOAuth, cb is null, userdata class = %s", arrayOfObject6);
        if ((paramInt1 == 0) && (paramInt2 == 0))
          break label215;
        localh.a(i.hpa);
        return;
        localh = null;
        break;
      }
      label215: String str2 = localc.Cm();
      mb localmb = localc.aoP();
      if ((cj.hX(str2)) || (localmb == null) || (localmb.fJZ == null))
      {
        localh.a(i.hpa);
        return;
      }
      if (this.hoQ.containsKey(str2))
        this.hoQ.remove(str2);
      this.hoQ.put(str2, localmb.fJZ);
      if (this.hoR.containsKey(str2))
        this.hoR.remove(str2);
      this.hoR.put(str2, cj.hW(localmb.fNh));
      if (cj.hX(this.hoS))
      {
        localh.a(i.hpa);
        return;
      }
      while (true)
      {
        bw localbw;
        try
        {
          Iterator localIterator1 = localmb.fJZ.iterator();
          if (!localIterator1.hasNext())
            break;
          localbw = (bw)localIterator1.next();
          if (localbw == null)
          {
            aa.e("MicroMsg.JSOAuthHelper", "dealJSOAuth, scopeInfo is null");
            continue;
          }
        }
        catch (Exception localException)
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localException.getMessage();
          aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH exception %s", arrayOfObject2);
          localh.a(i.hpa);
          return;
        }
        if (localbw.fCE == null)
        {
          aa.w("MicroMsg.JSOAuthHelper", "dealJSOAuth, ApiList is null");
        }
        else
        {
          Object[] arrayOfObject4 = new Object[4];
          arrayOfObject4[0] = localbw.fCA;
          arrayOfObject4[1] = Integer.valueOf(localbw.fCB);
          arrayOfObject4[2] = localbw.fCC;
          arrayOfObject4[3] = Integer.valueOf(localbw.fCE.size());
          aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH scopeInfo scope:%s, scopeStatus:%d, scopeDesc:%s, apiList size:%d", arrayOfObject4);
          Iterator localIterator2 = localbw.fCE.iterator();
          bu localbu;
          do
          {
            if (!localIterator2.hasNext())
              break;
            localbu = (bu)localIterator2.next();
            Object[] arrayOfObject5 = new Object[1];
            arrayOfObject5[0] = localbu.fCk;
            aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH apiName %s", arrayOfObject5);
          }
          while (!this.hoS.equals(localbu.fCk));
          switch (localbw.fCB)
          {
          default:
            localh.a(i.hpa);
            return;
          case 1:
            localh.a(i.hoZ);
            return;
          case 2:
            a(localc.etC, localbw, localmb.fNh, str2, localh);
            return;
          case 0:
          }
          localh.a(i.hpa);
          return;
        }
      }
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(localmb.fJZ.size());
      aa.c("MicroMsg.JSOAuthHelper", "JSOAUTH onSceneEnd, scopelist is empty %s", arrayOfObject3);
      localh.a(i.hpa);
      return;
    case 13:
    }
    ba.PE().b(13, this);
    d locald = (d)paramz;
    tk localtk = locald.aoQ();
    String str1 = locald.aoR();
    if ((localtk == null) || (localtk.fJZ == null) || (cj.hX(str1)))
    {
      aa.e("MicroMsg.JSOAuthHelper", "wrong args");
      return;
    }
    if ((List)this.hoQ.get(str1) == null)
    {
      aa.e("MicroMsg.JSOAuthHelper", "currentUrl not exist in scopeMap");
      return;
    }
    this.hoQ.remove(str1);
    this.hoQ.put(str1, localtk.fJZ);
    aa.d("MicroMsg.JSOAuthHelper", "JSOAUTH SetOAuthScopeProxy ok");
  }

  final void a(String paramString1, String paramString2, ao paramao, ArrayList paramArrayList, h paramh)
  {
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)) || (paramao == null))
    {
      aa.b("MicroMsg.JSOAuthHelper", "handleJSOAuth fail, invalid argument, currentUrl = %s, jsApi = %s", new Object[] { paramString1, paramString2 });
      paramh.a(i.hpa);
      return;
    }
    Object localObject4;
    int n;
    byte[] arrayOfByte;
    bw localbw2;
    if (paramArrayList != null)
    {
      Iterator localIterator3 = paramArrayList.iterator();
      localObject4 = null;
      n = -1;
      if (localIterator3.hasNext())
      {
        arrayOfByte = (byte[])localIterator3.next();
        localbw2 = new bw();
      }
    }
    while (true)
    {
      try
      {
        String str3;
        while (true)
        {
          localbw2.aJ(arrayOfByte);
          Iterator localIterator4 = localbw2.fCE.iterator();
          bu localbu2;
          do
          {
            if (!localIterator4.hasNext())
              break;
            localbu2 = (bu)localIterator4.next();
          }
          while ((localbu2.fCk == null) || (!localbu2.fCk.equals(paramString2)));
          int i3 = localbw2.fCB;
          try
          {
            aa.d("MicroMsg.JSOAuthHelper", "JSOAUTH found scope in scopeList");
            i2 = i3;
            localObject6 = localbw2;
            if (i2 != -1)
            {
              i = i2;
              localObject1 = localObject6;
              if (i != -1)
                break label732;
              List localList = (List)this.hoQ.get(paramString1);
              if (localList == null)
                break label732;
              str1 = (String)this.hoR.get(paramString1);
              Iterator localIterator1 = localList.iterator();
              localObject3 = localObject1;
              k = i;
              if (!localIterator1.hasNext())
                break label721;
              bw localbw1 = (bw)localIterator1.next();
              Iterator localIterator2 = localbw1.fCE.iterator();
              bu localbu1;
              do
              {
                if (!localIterator2.hasNext())
                  break;
                localbu1 = (bu)localIterator2.next();
              }
              while ((localbu1.fCk == null) || (!localbu1.fCk.equals(paramString2)));
              int m = localbw1.fCB;
              aa.d("MicroMsg.JSOAuthHelper", "JSOAUTH found scope in scopeMap");
              localObject2 = localbw1;
              j = m;
              if (j == -1)
                break label699;
              if (!cj.hX(str1))
                break label692;
              if (this.context != null)
                break label628;
              str9 = "";
              str2 = str9;
              Object[] arrayOfObject = new Object[3];
              arrayOfObject[0] = paramString2;
              arrayOfObject[1] = Integer.valueOf(j);
              arrayOfObject[2] = paramString1;
              aa.e("MicroMsg.JSOAuthHelper", "JSOAUTH jsApi = %s, scopeStatus = %s currentUrl = %s", arrayOfObject);
              str3 = (String)paramao.dOk.get("appId");
            }
            switch (j)
            {
            default:
              String str4 = (String)paramao.dOk.get("scope");
              String str5 = (String)paramao.dOk.get("addrSign");
              String str6 = (String)paramao.dOk.get("signType");
              String str7 = (String)paramao.dOk.get("timeStamp");
              String str8 = (String)paramao.dOk.get("nonceStr");
              this.hoS = paramString2;
              ba.PE().a(12, this);
              com.tencent.mm.plugin.webview.b.c localc = new com.tencent.mm.plugin.webview.b.c(str3, paramString1, str4, str5, str6, str7, str8);
              localc.H(paramh);
              ba.PE();
              com.tencent.mm.pluginsdk.model.app.c.a(12, localc);
              return;
              localObject4 = localObject6;
              n = i2;
            case 1:
            case 2:
            case 0:
            }
          }
          catch (Exception localException2)
          {
            i1 = i3;
            localObject5 = localbw2;
            localObject4 = localObject5;
            n = i1;
          }
        }
        break;
        label628: String str9 = this.context.getString(n.bpp);
        continue;
        paramh.a(i.hoZ);
        return;
        a(str3, (bw)localObject2, str2, paramString1, paramh);
        return;
        paramh.a(i.hpa);
        return;
      }
      catch (Exception localException1)
      {
        int i1 = n;
        Object localObject5 = localObject4;
        continue;
        label692: String str2 = str1;
        continue;
        label699: int k = j;
        Object localObject3 = localObject2;
        continue;
        int j = k;
        Object localObject2 = localObject3;
        continue;
        label721: j = k;
        localObject2 = localObject3;
        continue;
        label732: j = i;
        localObject2 = localObject1;
        String str1 = null;
        continue;
        int i2 = n;
        Object localObject6 = localObject4;
        continue;
      }
      Object localObject1 = localObject4;
      int i = n;
      continue;
      i = -1;
      localObject1 = null;
    }
  }

  final void detach()
  {
    aa.v("MicroMsg.JSOAuthHelper", "detach");
    this.hoQ.clear();
    this.hoR.clear();
    this.context = null;
  }

  final void setContext(Context paramContext)
  {
    this.context = paramContext;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.e
 * JD-Core Version:    0.6.2
 */