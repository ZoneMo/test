package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.cj;

public abstract class a extends x
  implements ab
{
  protected String cJa = "";
  protected boolean cLA = false;
  protected int cLy = 0;
  protected int cLz = 0;
  protected m cjh;
  protected int ckU = 0;

  public final int HG()
  {
    return this.cLy;
  }

  public abstract aj HH();

  public final int HI()
  {
    return this.cLz;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if (this.cLA)
      return -1;
    return a(paramr, HH(), this);
  }

  protected void cancel()
  {
    this.cLA = true;
    super.cancel();
  }

  public final boolean iC(String paramString)
  {
    if ((cj.hX(paramString)) || (cj.hX(this.cJa)))
      return false;
    return paramString.equals(this.cJa);
  }

  public final int vR()
  {
    return this.ckU;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.a
 * JD-Core Version:    0.6.2
 */