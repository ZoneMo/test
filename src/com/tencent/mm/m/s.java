package com.tencent.mm.m;

import com.tencent.mm.as.a;
import com.tencent.mm.as.d;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import junit.framework.Assert;

public final class s
  implements m
{
  u ckK = null;
  aa ckL = null;
  boolean ckM = false;
  private bu ckN = null;
  x ckz = null;

  public s()
  {
    be.uA().a(158, this);
  }

  public final int a(String paramString, u paramu)
  {
    if (paramu != null);
    int j;
    for (boolean bool1 = true; ; bool1 = false)
    {
      Assert.assertTrue("GetHDHeadImg must set callback", bool1);
      if (!cj.hX(paramString))
        break;
      paramu.E(3, -101);
      j = -101;
      return j;
    }
    this.ckK = paramu;
    if (i.tC(paramString));
    for (String str = i.tE(paramString); ; str = paramString)
    {
      this.ckz = af.wm().eq(str);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.GetHDHeadImgHelper", "GetHDHeadImg: %s", new Object[] { str });
      if ((this.ckz == null) || (!this.ckz.getUsername().equals(str)))
      {
        this.ckz = new x();
        this.ckz.setUsername(str);
      }
      if (cj.hX(this.ckz.vV()))
      {
        be.uz().sT().a(new d(1006, paramString));
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString;
        arrayOfObject[1] = Integer.valueOf(this.ckz.rz());
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.GetHDHeadImgHelper", "dkhurl [%s] has NO URL flag:%d !", arrayOfObject);
        this.ckL = new aa(str);
        boolean bool2 = be.uA().d(this.ckL);
        j = 0;
        if (bool2)
          break;
        paramu.E(3, -102);
        return -102;
      }
      x localx = this.ckz;
      if ((this.ckN == null) || (this.ckN.azH()))
        this.ckN = new bu(1, "get-hd-headimg", 1);
      int i = this.ckN.c(new t(this, localx));
      j = 0;
      if (i == 0)
        break;
      paramu.E(3, -103);
      return -103;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    this.ckK.E(paramInt1, paramInt2);
  }

  public final void vM()
  {
    be.uA().b(158, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.s
 * JD-Core Version:    0.6.2
 */