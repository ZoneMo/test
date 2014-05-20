package com.tencent.mm.ai;

import com.tencent.mm.model.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.l;
import java.util.HashMap;

public class m
  implements bb
{
  private static HashMap bZd;
  private w cAM = new w();
  private r cAN;
  private z cAO = null;

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("VIDEOINFO_TABLE".hashCode()), new n());
  }

  private static m DD()
  {
    m localm = (m)be.uh().dN(m.class.getName());
    if (localm == null)
    {
      localm = new m();
      be.uh().a(m.class.getName(), localm);
    }
    return localm;
  }

  public static r DE()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (DD().cAN == null)
      DD().cAN = new r(be.uz().sp(), be.uz().sM());
    return DD().cAN;
  }

  public static z DF()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (DD().cAO == null)
      DD().cAO = new z();
    return DD().cAO;
  }

  public final void N(boolean paramBoolean)
  {
    l.a(Integer.valueOf(43), this.cAM);
    l.a(Integer.valueOf(44), this.cAM);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    if (DD().cAO != null)
      DD().cAO.stop();
    Integer localInteger1 = Integer.valueOf(43);
    l.S(localInteger1);
    Integer localInteger2 = Integer.valueOf(44);
    l.S(localInteger2);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.m
 * JD-Core Version:    0.6.2
 */