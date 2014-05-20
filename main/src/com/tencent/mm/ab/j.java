package com.tencent.mm.ab;

import com.tencent.mm.a.c;
import com.tencent.mm.c.a.fs;
import com.tencent.mm.c.a.hq;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a.jo;
import com.tencent.mm.protocal.a.jp;
import com.tencent.mm.protocal.a.pr;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class j extends x
  implements com.tencent.mm.n.ab, com.tencent.mm.network.ab
{
  private int bRm;
  private m cjh;
  private com.tencent.mm.n.a cke;
  private List cvT;
  private boolean cvU = false;

  public j(int paramInt)
  {
    this.bRm = paramInt;
    this.cvT = new ArrayList();
    this.cvU = false;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "dkregcode:" + paramInt);
  }

  private k a(pr parampr)
  {
    k localk = new k();
    localk.setId(parampr.fGp);
    localk.setVersion(parampr.fFT);
    localk.setName(parampr.Th);
    localk.setSize(parampr.fSd);
    localk.gg(parampr.fFC);
    localk.setStatus(5);
    localk.dO(this.bRm);
    return localk;
  }

  private void d(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty upload speex config list");
      return;
    }
    String str1 = r.BM().BJ();
    int i = 0;
    label28: pr localpr;
    k localk2;
    if (i < paramLinkedList.size())
    {
      localpr = (pr)paramLinkedList.get(i);
      k localk1 = r.BM().G(localpr.fGp, this.bRm);
      if ((localk1 == null) || (localk1.getVersion() != localpr.fFT))
      {
        StringBuilder localStringBuilder = new StringBuilder().append(str1);
        r.BM();
        c.deleteFile(l.I(localpr.fGp, this.bRm));
        localk2 = a(localpr);
        localk2.cL(-1);
        if (localk1 != null)
          break label356;
        r.BM().a(localk2);
      }
    }
    while (true)
    {
      i locali = new i(localk2.getId(), 9);
      be.uA().d(locali);
      if (an.a(localpr.fzU) != null)
      {
        String str2 = new String(an.a(localpr.fzU));
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPackageList", "xml:" + str2);
      }
      if (an.a(localpr.fSe) != null)
      {
        String str3 = new String(an.a(localpr.fSe));
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPackageList", "xml2:" + str3);
      }
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPackageList", "xml3:" + localpr.toString());
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPackageList", "xml4:" + localpr.Th);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPackageList", "xml5:" + localpr.fFC);
      i++;
      break label28;
      break;
      label356: r.BM().b(localk2);
    }
  }

  private void e(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty background pkg list");
      return;
    }
    String str1 = r.BM().BJ();
    int i = 0;
    label28: pr localpr;
    k localk2;
    if (i < paramLinkedList.size())
    {
      localpr = (pr)paramLinkedList.get(i);
      k localk1 = r.BM().G(localpr.fGp, this.bRm);
      if ((localk1 == null) || (localk1.getVersion() != localpr.fFT))
      {
        StringBuilder localStringBuilder = new StringBuilder().append(str1);
        r.BM();
        c.deleteFile(l.I(localpr.fGp, this.bRm));
        localk2 = a(localpr);
        localk2.cL(-1);
        if (localk1 != null)
          break label227;
        r.BM().a(localk2);
      }
    }
    while (true)
    {
      byte[] arrayOfByte = an.a(localpr.fzU);
      if ((arrayOfByte != null) && (arrayOfByte.length > 0))
      {
        r.BM();
        String str2 = l.H(localpr.fGp, this.bRm);
        c.deleteFile(str1 + str2);
        c.b(str1, str2, arrayOfByte);
      }
      i++;
      break label28;
      break;
      label227: r.BM().b(localk2);
    }
  }

  private void f(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty emoji pkg list");
      return;
    }
    int i = 0;
    label21: pr localpr;
    k localk2;
    if (i < paramLinkedList.size())
    {
      localpr = (pr)paramLinkedList.get(i);
      k localk1 = r.BM().G(localpr.fGp, this.bRm);
      localk2 = a(localpr);
      localk2.cL(-1);
      if (localk1 != null)
        break label126;
      r.BM().a(localk2);
    }
    while (true)
    {
      byte[] arrayOfByte = an.a(localpr.fzU);
      if ((arrayOfByte != null) && (arrayOfByte.length > 0))
        this.cvT.add(new String(arrayOfByte));
      i++;
      break label21;
      break;
      label126: r.BM().b(localk2);
    }
  }

  private void g(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty emoji pkg list");
    String str1;
    pr localpr;
    k localk1;
    byte[] arrayOfByte;
    while (true)
    {
      return;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + paramLinkedList.size());
      str1 = r.BM().BJ();
      for (int i = 0; i < paramLinkedList.size(); i++)
      {
        localpr = (pr)paramLinkedList.get(i);
        localk1 = r.BM().G(localpr.fGp, this.bRm);
        arrayOfByte = an.a(localpr.fzU);
        if (localpr.fzU != null)
          break label118;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "error give me a null thumb it should be xml");
      }
    }
    label118: String str2;
    String str3;
    label161: k localk2;
    if ((localk1 == null) || (localk1.getVersion() != localpr.fFT))
    {
      str2 = new String(arrayOfByte);
      str3 = "zh_CN";
      if (str2.indexOf(str3) >= 0)
      {
        String str4 = str3 + "_ARTIST.mm";
        c.deleteFile(str1 + str4);
        c.deleteFile(str1 + str3 + "_ARTISTF.mm");
        c.b(str1, str4, arrayOfByte);
      }
    }
    else
    {
      localk2 = a(localpr);
      localk2.cL(-1);
      if (localk1 != null)
        break label371;
      r.BM().a(localk2);
    }
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", localpr.Th + " - " + localpr.fGp + " - " + localpr.fFC + " - " + localpr.fSd);
      break;
      str3 = "en";
      if (str2.indexOf(str3) >= 0)
        break label161;
      str3 = "zh_TW";
      if (str2.indexOf(str3) >= 0)
        break label161;
      str3 = "en";
      break label161;
      label371: r.BM().b(localk2);
    }
  }

  private static String gd(String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  private static int ge(String paramString)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      do
        int i = 0;
      while (paramString == null);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "parserInt error " + paramString);
    }
    return 0;
  }

  private static double gf(String paramString)
  {
    double d1 = 0.0D;
    try
    {
      double d2 = Double.parseDouble(paramString);
      d1 = d2;
      return d1;
    }
    catch (Exception localException)
    {
      while (paramString == null);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "parserInt error " + paramString);
    }
    return d1;
  }

  private void h(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "empty egg package");
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + paramLinkedList.size());
    pr localpr = (pr)paramLinkedList.get(0);
    k localk1 = r.BM().G(localpr.fGp, this.bRm);
    k localk2 = a(localpr);
    localk2.cL(-1);
    if (localk1 == null)
      r.BM().a(localk2);
    Map localMap;
    while (true)
    {
      String str1 = new String(an.a(localpr.fzU));
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneGetPackageList", "eggXml:" + str1);
      localMap = u.aL(str1, "EasterEgg");
      if (localMap != null)
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "Exception in parseXml EasterEgg, please check the xml");
      return;
      r.BM().b(localk2);
    }
    e locale = new e();
    locale.cvO = gf((String)localMap.get(".EasterEgg.$version"));
    for (int i = 0; ; i++)
    {
      StringBuilder localStringBuilder1 = new StringBuilder(".EasterEgg.Item");
      Object localObject1;
      d locald;
      int j;
      label473: StringBuilder localStringBuilder2;
      if (i == 0)
      {
        localObject1 = "";
        String str2 = localObject1;
        if (localMap.get(str2 + ".$name") == null)
          break;
        locald = new d();
        locald.name = gd((String)localMap.get(str2 + ".$name"));
        locald.cvK = ge((String)localMap.get(str2 + ".$reportType"));
        locald.cvJ = ge((String)localMap.get(str2 + ".Emoji"));
        locald.cvL = cj.sO((String)localMap.get(str2 + ".$BeginDate"));
        locald.cvM = cj.sO((String)localMap.get(str2 + ".$EndDate"));
        j = 0;
        localStringBuilder2 = new StringBuilder().append(str2).append(".KeyWord");
        if (j != 0)
          break label566;
      }
      label566: for (Object localObject2 = ""; ; localObject2 = Integer.valueOf(j))
      {
        String str3 = localObject2;
        if (localMap.get(str3) == null)
          break label576;
        locald.cvI.add(gd((String)localMap.get(str3)));
        j++;
        break label473;
        localObject1 = Integer.valueOf(i);
        break;
      }
      label576: locale.cvN.add(locald);
    }
    try
    {
      byte[] arrayOfByte = locale.toByteArray();
      c.a(be.uz().sW() + "eggingfo.ini", arrayOfByte, arrayOfByte.length);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void i(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty config list");
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + paramLinkedList.size());
    int i = 0;
    label46: pr localpr;
    k localk2;
    if (i < paramLinkedList.size())
    {
      localpr = (pr)paramLinkedList.get(i);
      k localk1 = r.BM().G(localpr.fGp, this.bRm);
      localk2 = a(localpr);
      localk2.cL(-1);
      if (localk1 != null)
        break label225;
      r.BM().a(localk2);
    }
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", localpr.Th + " - " + localpr.fGp + " - " + localpr.fFC + " - " + localpr.fSd);
      byte[] arrayOfByte = an.a(localpr.fzU);
      String str = new String(arrayOfByte);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "ConfigList xml : " + str);
      com.tencent.mm.e.d.qB().b(localpr.fGp, arrayOfByte);
      i++;
      break label46;
      break;
      label225: r.BM().b(localk2);
    }
  }

  private void j(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty bank logo pkg list");
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + paramLinkedList.size());
    int i = 0;
    label46: k localk2;
    if (i < paramLinkedList.size())
    {
      pr localpr = (pr)paramLinkedList.get(i);
      byte[] arrayOfByte = an.a(localpr.fzU);
      if ((arrayOfByte != null) && (arrayOfByte.length > 0))
      {
        fs localfs = new fs();
        localfs.bQm.bQo = arrayOfByte;
        if (com.tencent.mm.sdk.b.a.ayH().f(localfs))
        {
          k localk1 = r.BM().G(localpr.fGp, this.bRm);
          localk2 = a(localpr);
          localk2.cL(-1);
          if (localk1 != null)
            break label164;
          r.BM().a(localk2);
        }
      }
    }
    while (true)
    {
      i++;
      break label46;
      break;
      label164: r.BM().b(localk2);
    }
  }

  private void k(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty address pkg list");
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + paramLinkedList.size());
    int i = 0;
    label46: k localk2;
    if (i < paramLinkedList.size())
    {
      pr localpr = (pr)paramLinkedList.get(i);
      k localk1 = r.BM().G(localpr.fGp, this.bRm);
      localk2 = a(localpr);
      localk2.cL(-1);
      if (localk1 != null)
        break label137;
      r.BM().a(localk2);
    }
    while (true)
    {
      i locali = new i(localk2.getId(), 12);
      be.uA().d(locali);
      i++;
      break label46;
      break;
      label137: r.BM().b(localk2);
    }
  }

  private void l(LinkedList paramLinkedList)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "updateLangPkg");
    if ((paramLinkedList == null) || (paramLinkedList.size() == 0))
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty langage package list");
    while (true)
    {
      return;
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
      {
        pr localpr = (pr)localIterator.next();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localpr.toString();
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "pkg.toString %s", arrayOfObject);
        k localk1 = r.BM().G(localpr.fGp, this.bRm);
        k localk2 = a(localpr);
        localk2.cL(-1);
        if (localk1 == null)
          r.BM().a(localk2);
        else
          r.BM().b(localk2);
      }
    }
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "dkregcode:" + this.bRm);
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new jo());
    localb.b(new jp());
    localb.es("/cgi-bin/micromsg-bin/getpackagelist");
    localb.cN(159);
    localb.cO(51);
    localb.cP(1000000051);
    this.cke = localb.wx();
    jo localjo = (jo)this.cke.wr();
    LinkedList localLinkedList = new LinkedList();
    if (!be.se())
      return -1;
    k[] arrayOfk = r.BM().dR(this.bRm);
    if ((arrayOfk != null) && (arrayOfk.length > 0))
    {
      int i = 0;
      if (i < arrayOfk.length)
      {
        pr localpr = new pr();
        localpr.fGp = arrayOfk[i].getId();
        if ((at.cHB) && (this.bRm == 7))
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "isShakeGetConfigList");
        for (localpr.fFT = 0; ; localpr.fFT = arrayOfk[i].getVersion())
        {
          localLinkedList.add(localpr);
          i++;
          break;
        }
      }
    }
    localjo.fAD = localLinkedList;
    localjo.fAC = localLinkedList.size();
    localjo.dGR = this.bRm;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = Integer.valueOf(this.bRm);
    arrayOfObject[4] = paramString;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "onGYNetEnd, netid:%d, errType:%d, errCode:%d, pkgType:%d, errMsg:%s", arrayOfObject);
    if ((paramInt2 != 0) && (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    jp localjp = (jp)((com.tencent.mm.n.a)paramaj).ws();
    if (localjp.dGR != this.bRm)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "packageType is not consistent");
      this.cjh.a(3, -1, "", this);
      return;
    }
    LinkedList localLinkedList = localjp.fAD;
    StringBuilder localStringBuilder = new StringBuilder("list size:");
    int i;
    if (localLinkedList == null)
    {
      i = 0;
      label155: com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPackageList", i);
      if (this.bRm != 2)
        break label276;
      f(localLinkedList);
    }
    while (true)
    {
      hq localhq = new hq();
      localhq.bRl.bRn = localLinkedList;
      localhq.bRl.bRm = this.bRm;
      com.tencent.mm.sdk.b.a.ayH().f(localhq);
      if (localjp.fIz <= 0)
        break label737;
      if (a(wM(), this.cjh) != -1)
        break;
      this.cjh.a(3, -1, "doScene failed", this);
      return;
      i = localLinkedList.size();
      break label155;
      label276: if (this.bRm == 1)
        e(localLinkedList);
      else if (this.bRm == 4)
        g(localLinkedList);
      else if (this.bRm == 6)
        h(localLinkedList);
      else if (this.bRm == 7)
        i(localLinkedList);
      else if (this.bRm == 8)
      {
        if ((localLinkedList == null) || (localLinkedList.size() <= 0))
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "empty regioncode pkg list");
        }
        else
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + localLinkedList.size());
          pr localpr2 = (pr)localLinkedList.get(0);
          k localk3 = r.BM().G(localpr2.fGp, this.bRm);
          k localk4 = a(localpr2);
          localk4.cL(-1);
          if (localk3 == null)
            r.BM().a(localk4);
          while (true)
          {
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", localpr2.Th + " - " + localpr2.fGp + " - " + localpr2.fFC + " - " + localpr2.fSd);
            break;
            r.BM().b(localk4);
          }
        }
      }
      else if (this.bRm == 9)
        d(localLinkedList);
      else if (this.bRm == 10)
      {
        if ((localLinkedList == null) || (localLinkedList.size() <= 0))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPackageList", "empty mass send top config package");
        }
        else
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPackageList", "pkgList size " + localLinkedList.size());
          pr localpr1 = (pr)localLinkedList.get(0);
          k localk1 = r.BM().G(localpr1.fGp, this.bRm);
          k localk2 = a(localpr1);
          localk2.cL(-1);
          if (localk1 == null)
            r.BM().a(localk2);
          else
            r.BM().b(localk2);
        }
      }
      else if (this.bRm == 11)
        j(localLinkedList);
      else if (this.bRm == 12)
        k(localLinkedList);
      else if (this.bRm == 5)
        l(localLinkedList);
    }
    label737: this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  protected final void a(z paramz)
  {
  }

  protected final boolean b(x paramx)
  {
    if (!(paramx instanceof j));
    while (this.bRm != ((j)paramx).bRm)
      return true;
    return false;
  }

  public final int getType()
  {
    return 159;
  }

  public final int wQ()
  {
    return this.bRm;
  }

  protected final int we()
  {
    return 20;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.j
 * JD-Core Version:    0.6.2
 */