package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.c;
import com.tencent.mm.n.d;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pluginsdk.ah;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.protocal.a.aal;
import com.tencent.mm.protocal.a.e;
import com.tencent.mm.protocal.a.kq;
import com.tencent.mm.protocal.a.kr;
import com.tencent.mm.protocal.a.ra;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class aj extends z
{
  private LinkedList fhF;
  private LinkedList fhG;
  private LinkedList fhH;
  private int fhI;

  public aj(int paramInt1, int paramInt2, int paramInt3, String paramString, LinkedList paramLinkedList)
  {
    aa.i("MicroMsg.NetSceneGetSuggestionAppList", "offset: " + paramInt2 + ", limit = " + paramInt3 + ", lang = " + paramString + "installedApp list size: " + paramLinkedList.size());
    Iterator localIterator = paramLinkedList.iterator();
    while (localIterator.hasNext())
      aa.d("MicroMsg.NetSceneGetSuggestionAppList", "install id:[%s]", new Object[] { (String)localIterator.next() });
    this.fhI = paramInt1;
    b localb = new b();
    localb.a(new kq());
    localb.b(new kr());
    localb.es("/cgi-bin/micromsg-bin/getsuggestionapplist");
    localb.cN(409);
    localb.cO(0);
    localb.cP(0);
    this.fhs = localb.wx();
    kq localkq = (kq)this.fhs.wr();
    localkq.fMp = paramInt1;
    localkq.fMq = paramInt2;
    localkq.fMr = paramInt3;
    localkq.fzH = paramString;
    LinkedList localLinkedList = R(paramLinkedList);
    localkq.fMs = localLinkedList.size();
    localkq.fMt = localLinkedList;
    this.fhF = new LinkedList();
    this.fhG = new LinkedList();
    this.fhH = new LinkedList();
    this.fhH.addAll(paramLinkedList);
  }

  private static LinkedList R(LinkedList paramLinkedList)
  {
    LinkedList localLinkedList = new LinkedList();
    if (paramLinkedList == null)
      return localLinkedList;
    Iterator localIterator = paramLinkedList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!cj.hX(str))
        localLinkedList.add(an.hQ(str));
    }
    return localLinkedList;
  }

  private static void a(k paramk, aal paramaal)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = paramk.field_appId;
    aa.f("MicroMsg.NetSceneGetSuggestionAppList", "dealYYBDownloadInfos, appId = %s", arrayOfObject1);
    if (paramaal != null)
    {
      paramk.bSL = paramaal.gap;
      paramk.bSO = paramaal.fCy;
      paramk.bSP = paramaal.gaq;
      paramk.bSM = paramaal.gar;
      paramk.bSN = paramaal.fEv;
      paramk.bSQ = paramaal.gas;
      paramk.bSR = paramaal.gat;
      Object[] arrayOfObject2 = new Object[7];
      arrayOfObject2[0] = Integer.valueOf(paramaal.gap);
      arrayOfObject2[1] = paramaal.fCy;
      arrayOfObject2[2] = paramaal.gaq;
      arrayOfObject2[3] = paramaal.gar;
      arrayOfObject2[4] = paramaal.fEv;
      arrayOfObject2[5] = paramaal.gas;
      arrayOfObject2[6] = Integer.valueOf(paramaal.gat);
      aa.d("MicroMsg.NetSceneGetSuggestionAppList", "get yyb download infos:[%d],[%s],[%s],[%s],[%s],[%s],[%d]", arrayOfObject2);
    }
  }

  private static void a(k paramk, e parame)
  {
    paramk.bSz = parame.fyS;
    paramk.bSA = parame.fyT;
    paramk.bSH = parame.fyU;
    paramk.bSF = parame.fyX;
    paramk.field_appName = parame.fyV;
    paramk.field_appIconUrl = parame.fyW;
    paramk.bSI = parame.fyZ;
    paramk.bSS = parame.fzb;
    a(paramk, parame.fza);
  }

  private static void a(k paramk, ra paramra)
  {
    paramk.bSA = paramra.fyT;
    paramk.field_appIconUrl = paramra.fyW;
    paramk.bSy = paramra.fTo;
    paramk.field_appName = paramra.fyV;
    paramk.bSE = paramra.fTr;
    paramk.bSF = paramra.fyX;
    paramk.field_appType = paramra.fAe;
    paramk.bSH = paramra.fyU;
    paramk.field_packageName = paramra.fyY;
    paramk.bSI = paramra.fyZ;
    paramk.bSJ = paramra.fTv;
    paramk.bSK = paramra.fTw;
    a(paramk, paramra.fza);
    if ((!cj.hX(paramk.field_appType)) && (paramk.field_appType.startsWith("1")))
    {
      if (!paramk.field_appType.endsWith(","))
        paramk.field_appType += ",";
      paramk.field_appType = ("," + paramk.field_appType);
    }
  }

  private void a(o paramo, LinkedList paramLinkedList)
  {
    if ((paramLinkedList != null) && (paramLinkedList.size() > 0))
    {
      Iterator localIterator = paramLinkedList.iterator();
      if (localIterator.hasNext())
      {
        e locale = (e)localIterator.next();
        k localk1 = l.F(locale.fyR, true);
        if (localk1 != null)
        {
          a(localk1, locale);
          paramo.a(localk1, new String[0]);
        }
        k localk2;
        for (Object localObject = localk1; ; localObject = localk2)
        {
          this.fhG.add(localObject);
          break;
          localk2 = new k();
          localk2.field_appId = locale.fyR;
          a(localk2, locale);
          paramo.b(localk2);
        }
      }
    }
  }

  private void b(o paramo, LinkedList paramLinkedList)
  {
    if ((paramLinkedList != null) && (paramLinkedList.size() > 0))
    {
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
      {
        ra localra = (ra)localIterator.next();
        if (cj.hX(localra.fyR))
        {
          aa.e("MicroMsg.NetSceneGetSuggestionAppList", "error appinfo, the appid is null");
        }
        else
        {
          boolean bool1 = true;
          boolean bool2 = false;
          k localk1 = l.F(localra.fyR, true);
          label140: label160: boolean bool3;
          Object localObject;
          if (localk1 != null)
          {
            a(localk1, localra);
            boolean bool7;
            boolean bool8;
            boolean bool6;
            if (this.fhI == 3)
            {
              localk1.field_status = 5;
              if ((cj.hX(localk1.bSK)) || (cj.hX(localk1.bSJ)))
              {
                Object[] arrayOfObject4 = new Object[2];
                if (localk1.bSK != null)
                {
                  bool7 = true;
                  arrayOfObject4[0] = Boolean.valueOf(bool7);
                  if (localk1.bSJ == null)
                    break label283;
                  bool8 = true;
                  arrayOfObject4[1] = Boolean.valueOf(bool8);
                  aa.b("MicroMsg.NetSceneGetSuggestionAppList", "wrong suggestion params1, has IntroUrl %s, has IconUrl %s", arrayOfObject4);
                  bool3 = false;
                  bool6 = false;
                }
              }
            }
            while (true)
            {
              Object[] arrayOfObject3 = new Object[3];
              arrayOfObject3[0] = localra.fyR;
              arrayOfObject3[1] = Boolean.valueOf(bool6);
              arrayOfObject3[2] = Boolean.valueOf(bool3);
              aa.d("MicroMsg.NetSceneGetSuggestionAppList", "update appinfo: AppID = %s, ret = %s, needAddToList = %s", arrayOfObject3);
              localObject = localk1;
              label232: if ((!bool3) || (this.fhH.contains(localra.fyR)) || (this.fhF.contains(localObject)))
                break label481;
              this.fhF.add(localObject);
              break;
              bool7 = false;
              break label140;
              label283: bool8 = false;
              break label160;
              bool6 = paramo.a(localk1, new String[0]);
              bool3 = bool1;
            }
          }
          k localk2 = new k();
          localk2.field_appId = localra.fyR;
          a(localk2, localra);
          boolean bool4;
          label387: boolean bool5;
          if (this.fhI == 3)
          {
            localk2.field_status = 5;
            if ((cj.hX(localk2.bSK)) || (cj.hX(localk2.bSJ)))
            {
              Object[] arrayOfObject2 = new Object[2];
              if (localk2.bSK != null)
              {
                bool4 = true;
                arrayOfObject2[0] = Boolean.valueOf(bool4);
                if (localk2.bSJ == null)
                  break label489;
                bool5 = true;
                label407: arrayOfObject2[1] = Boolean.valueOf(bool5);
                aa.b("MicroMsg.NetSceneGetSuggestionAppList", "wrong suggestion params2, has IntroUrl %s, has IconUrl %s", arrayOfObject2);
                bool1 = false;
              }
            }
          }
          while (true)
          {
            Object[] arrayOfObject1 = new Object[3];
            arrayOfObject1[0] = localra.fyR;
            arrayOfObject1[1] = Boolean.valueOf(bool2);
            arrayOfObject1[2] = Boolean.valueOf(bool1);
            aa.d("MicroMsg.NetSceneGetSuggestionAppList", "insert appinfo: AppID = %s, ret = %s, needAddToList = %s", arrayOfObject1);
            localObject = localk2;
            bool3 = bool1;
            break label232;
            label481: break;
            bool4 = false;
            break label387;
            label489: bool5 = false;
            break label407;
            bool2 = paramo.b(localk2);
          }
        }
      }
    }
  }

  public final void K(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      aa.e("MicroMsg.NetSceneGetSuggestionAppList", "buf is null");
      return;
    }
    d locald = this.fhs.wt();
    try
    {
      locald.s(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneGetSuggestionAppList", localException.getMessage());
    }
  }

  public final byte[] Ps()
  {
    try
    {
      byte[] arrayOfByte = ((c)this.fhs.wJ()).wz();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneGetSuggestionAppList", localException.getMessage());
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, com.tencent.mm.network.aj paramaj, byte[] paramArrayOfByte)
  {
    aa.i("MicroMsg.NetSceneGetSuggestionAppList", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      aa.e("MicroMsg.NetSceneGetSuggestionAppList", "errType = " + paramInt2 + ", errCode = " + paramInt3);
      return;
    }
    kr localkr = (kr)this.fhs.ws();
    if (localkr == null)
    {
      aa.e("MicroMsg.NetSceneGetSuggestionAppList", "resp == null");
      return;
    }
    int i = localkr.fMu;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(this.fhI);
    aa.f("MicroMsg.NetSceneGetSuggestionAppList", "suggestion app count = %s, appType = %s, ", arrayOfObject);
    o localo = h.app().apw();
    b(localo, localkr.fMv);
    a(localo, localkr.fMy);
  }

  public final LinkedList aqa()
  {
    return this.fhG;
  }

  public final int aqb()
  {
    return ((kr)this.fhs.ws()).fMu;
  }

  public final LinkedList aqc()
  {
    return this.fhF;
  }

  public final int getType()
  {
    return 4;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.aj
 * JD-Core Version:    0.6.2
 */