package com.tencent.mm.modelstat;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.l;
import com.tencent.mm.network.ag;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.h;
import java.util.HashMap;

public class r
  implements bb
{
  private static HashMap bZd;
  private g cAb = new g();
  private j cAc;
  private a cAd = null;
  private ag cpb = new s(this);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("NETSTAT_TABLE".hashCode()), new u());
  }

  public static a De()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Df().cAd == null)
      Df().cAd = new a(h.cfC);
    return Df().cAd;
  }

  private static r Df()
  {
    r localr = (r)be.uh().dN(r.class.getName());
    if (localr == null)
    {
      localr = new r();
      be.uh().a(r.class.getName(), localr);
    }
    return localr;
  }

  public static j Dg()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Df().cAc == null)
    {
      Df().cAc = new j(be.uz().sp());
      be.uz().a(Df().cAc);
    }
    return Df().cAc;
  }

  public static void d(com.tencent.mm.network.r paramr)
  {
    Object[] arrayOfObject = new Object[2];
    if (paramr == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      arrayOfObject[1] = cj.azV();
      aa.e("MicroMsg.SubCoreStat", "dknetstat setNetworkMoniter  isnull:%b  ,  %s ", arrayOfObject);
      if (paramr != null)
        paramr.a(Df().cAb);
      return;
    }
  }

  public final void N(boolean paramBoolean)
  {
    l.a(Integer.valueOf(9998), this.cAb);
    be.a(this.cpb);
    ar.a(new v(this));
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    be.b(this.cpb);
    Integer localInteger = Integer.valueOf(9998);
    l.S(localInteger);
    this.cAb = new g();
    ar.a(null);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.r
 * JD-Core Version:    0.6.2
 */