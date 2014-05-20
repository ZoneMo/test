package com.tencent.mm.w;

import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.l;
import java.util.HashMap;

public class ag
  implements bb
{
  private static HashMap bZd;
  private g cuh;
  private o cui;
  private a cuj;
  private t cuk = new t();
  private m cul = new m();

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("IMGINFO_TABLE".hashCode()), new ah());
  }

  private static ag AX()
  {
    ag localag = (ag)be.uh().dN(ag.class.getName());
    if (localag == null)
    {
      localag = new ag();
      be.uh().a(ag.class.getName(), localag);
    }
    return localag;
  }

  public static o AY()
  {
    if (AX().cui == null)
      AX().cui = new o();
    return AX().cui;
  }

  public static a AZ()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (AX().cuj == null)
      AX().cuj = new a();
    return AX().cuj;
  }

  public static g Ba()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (AX().cuh == null)
      AX().cuh = new g(be.uz().sp());
    return AX().cuh;
  }

  private static void Bb()
  {
    g localg = AX().cuh;
    if (localg != null)
      localg.AO();
  }

  public static void clearCache()
  {
    Bb();
  }

  public final void N(boolean paramBoolean)
  {
    l.a(Integer.valueOf(3), this.cul);
    l.a(Integer.valueOf(23), this.cul);
    com.tencent.mm.cache.b.a("local_cdn_img_cache", this.cuk);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    if (AX().cui != null)
      AX().cui.stop();
    Bb();
    Integer localInteger1 = Integer.valueOf(3);
    l.S(localInteger1);
    Integer localInteger2 = Integer.valueOf(23);
    l.S(localInteger2);
    com.tencent.mm.cache.b.a("local_cdn_img_cache", null);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.ag
 * JD-Core Version:    0.6.2
 */