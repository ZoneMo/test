package com.tencent.mm.ui.tools;

import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.applet.n;

final class cs extends n
{
  protected String grp = null;
  protected String grq = null;
  protected byte[] grr = null;
  protected boolean grs = false;
  protected String hkw = null;
  protected String hkx = null;
  protected String username = null;

  public final void aFM()
  {
    i locali = new i(this.username, this.hkw, this.hkx, this.grs, "", "", "");
    be.uA().d(locali);
  }

  protected final void onStart()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cs
 * JD-Core Version:    0.6.2
 */