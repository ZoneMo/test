package com.tencent.mm.t;

import com.tencent.mm.model.a;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.ac;
import java.util.HashMap;

public class l
  implements bb
{
  private static HashMap bZd;
  private b csy;
  private c csz;

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("GETCONTACTINFO_TABLE".hashCode()), new m());
  }

  private static l Aw()
  {
    l locall = (l)be.uh().dN(l.class.getName());
    if (locall == null)
    {
      locall = new l();
      be.uh().a(l.class.getName(), locall);
    }
    return locall;
  }

  public static b Ax()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (Aw().csy == null)
      Aw().csy = new b(be.uz().sp());
    return Aw().csy;
  }

  public final void N(boolean paramBoolean)
  {
    if (Aw().csz == null)
      Aw().csz = new c();
    ar.a(Aw().csz);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    if (Aw().csz != null)
    {
      c localc = Aw().csz;
      be.uA().b(182, localc);
    }
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.l
 * JD-Core Version:    0.6.2
 */