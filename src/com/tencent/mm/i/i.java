package com.tencent.mm.i;

import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import java.util.HashMap;

public class i
  implements bb
{
  private a cgt = a.rU();

  public static a rX()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    i locali = (i)be.uh().dN(i.class.getName());
    if (locali == null)
    {
      locali = new i();
      be.uh().a(i.class.getName(), locali);
      locali.cgt.init();
    }
    return locali.cgt;
  }

  public final void N(boolean paramBoolean)
  {
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
    this.cgt.init();
  }

  public final void qy()
  {
    this.cgt.clear();
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.i.i
 * JD-Core Version:    0.6.2
 */