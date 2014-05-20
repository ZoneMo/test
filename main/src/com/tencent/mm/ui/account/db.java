package com.tencent.mm.ui.account;

import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.applet.n;

public final class db extends n
{
  private static db grt = null;
  public String cxs = null;
  public String gro = null;
  public String grp = null;
  public String grq = null;
  public byte[] grr = null;
  public boolean grs = false;

  public static void a(db paramdb)
  {
    grt = paramdb;
  }

  public static String aFN()
  {
    if (grt != null)
      return grt.cxs;
    return null;
  }

  public static String aFO()
  {
    if (grt != null)
      return grt.gro;
    return null;
  }

  public final void aFM()
  {
    i locali = new i(this.cxs, this.gro, this.gxw.BW(), this.gxw.aGu(), this.gxw.aGt(), this.gxw.aGv(), 0);
    be.uA().d(locali);
  }

  protected final void onStart()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.db
 * JD-Core Version:    0.6.2
 */