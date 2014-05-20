package com.tencent.mm.modelfriend;

import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.protocal.a.ne;
import com.tencent.mm.protocal.a.nt;
import com.tencent.mm.protocal.a.ya;
import com.tencent.mm.protocal.a.yb;
import com.tencent.mm.storage.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class as extends x
  implements ab
{
  private int bNk;
  private m cjh;
  private final List crr;
  private final List crs;
  private final String crt = (String)be.uz().sr().get(6);
  private int cru = 0;
  private int crv = 0;

  public as(List paramList1, List paramList2)
  {
    this.crr = paramList1;
    this.crs = paramList2;
    this.bNk = 1;
  }

  private static List q(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramList == null) || (paramList.size() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMContact", "the req emai list is empty");
      return localArrayList;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((ne)localIterator.next()).fNT);
    return localArrayList;
  }

  private static List r(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramList == null) || (paramList.size() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMContact", "the req mobile list is empty");
      return localArrayList;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(f.h(c.kH(((nt)localIterator.next()).fNT).getBytes()));
    return localArrayList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if (((this.crr == null) || (this.crr.size() == 0)) && ((this.crs == null) || (this.crs.size() == 0)))
      return -1;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ya());
    localb.b(new yb());
    localb.es("/cgi-bin/micromsg-bin/uploadmcontact");
    localb.cN(133);
    localb.cO(0);
    localb.cP(0);
    a locala = localb.wx();
    ya localya = (ya)locala.wr();
    localya.fBw = this.crt;
    localya.eBo = v.th();
    localya.fBl = this.bNk;
    int i = 200;
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    do
    {
      if (i <= 0)
        break;
      if ((this.crr != null) && (this.cru < this.crr.size()))
      {
        if (this.crr.get(this.cru) != null)
        {
          nt localnt = new nt();
          localnt.fNT = ((String)this.crr.get(this.cru));
          localLinkedList1.add(localnt);
        }
        this.cru = (1 + this.cru);
        i--;
      }
      if ((this.crs != null) && (this.crv < this.crs.size()))
      {
        if (this.crs.get(this.crv) != null)
        {
          ne localne = new ne();
          localne.fNT = ((String)this.crs.get(this.crv));
          localLinkedList2.add(localne);
        }
        this.crv = (1 + this.crv);
        i--;
      }
    }
    while (((this.crs != null) && (this.crv < this.crs.size())) || ((this.crr != null) && (this.cru < this.crr.size())));
    localya.fNN = localLinkedList1;
    localya.fYq = localLinkedList1.size();
    localya.fYs = localLinkedList2;
    localya.fYr = localLinkedList2.size();
    StringBuilder localStringBuilder1 = new StringBuilder("doscene in:[");
    int j;
    StringBuilder localStringBuilder2;
    int k;
    if (this.crs == null)
    {
      j = 0;
      localStringBuilder2 = localStringBuilder1.append(j).append(",");
      List localList = this.crr;
      k = 0;
      if (localList != null)
        break label576;
    }
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadMContact", k + "] index:[" + this.crv + "," + this.cru + "] req:[" + localya.fYs.size() + "," + localya.fNN.size() + "]");
      return a(paramr, locala, this);
      j = this.crs.size();
      break;
      label576: k = this.crr.size();
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    ya localya = (ya)((a)paramaj).wr();
    int i = localya.fYs.size() + localya.fNN.size();
    if ((i == 0) || (i > 200))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadMContact", "security checked failed : exceed max send count");
      return com.tencent.mm.n.aa.cmi;
    }
    if ((localya.fBw == null) || (localya.fBw.length() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadMContact", "security checked failed : moblie null");
      return com.tencent.mm.n.aa.cmi;
    }
    if ((localya.eBo == null) || (localya.eBo.length() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadMContact", "security checked failed : username null");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadMContact", "onSceneEnd: errType = " + paramInt2 + " errCode = " + paramInt3 + " errMsg = " + paramString);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadMContact", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    }
    do
    {
      return;
      ya localya = (ya)((a)paramaj).wr();
      z.o(q(localya.fYs));
      z.o(r(localya.fNN));
      if (((this.crs == null) || (this.crv >= this.crs.size())) && ((this.crr == null) || (this.cru >= this.crr.size())))
      {
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
    }
    while (a(wM(), this.cjh) >= 0);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 133;
  }

  protected final int we()
  {
    return 10;
  }

  public final List zU()
  {
    return this.crr;
  }

  public final List zV()
  {
    return this.crs;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.as
 * JD-Core Version:    0.6.2
 */