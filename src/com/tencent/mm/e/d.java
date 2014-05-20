package com.tencent.mm.e;

import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import java.util.HashMap;

public class d
  implements bb
{
  private c cfP = new c();
  private a cfQ = new a();

  public static c qA()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    return qx().cfP;
  }

  public static a qB()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    return qx().cfQ;
  }

  private static d qx()
  {
    d locald = (d)be.uh().dN(d.class.getName());
    if (locald == null)
    {
      locald = new d();
      be.uh().a(d.class.getName(), locald);
    }
    return locald;
  }

  public final void N(boolean paramBoolean)
  {
    if (paramBoolean)
      this.cfQ.qj();
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
    this.cfP.gW();
    this.cfQ.init();
  }

  public final void qy()
  {
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.e.d
 * JD-Core Version:    0.6.2
 */