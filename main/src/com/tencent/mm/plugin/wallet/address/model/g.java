package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.c.a.er;
import com.tencent.mm.c.a.es;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.p.p;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class g extends com.tencent.mm.sdk.b.g
  implements m
{
  private er eVY;
  private com.tencent.mm.p.a eVZ;

  private void k(int paramInt, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Boolean.valueOf(paramBoolean);
    aa.e("MicroMsg.RcptGetAddrEventListener", "setResult errCode[%s], isAccept[%s]", arrayOfObject);
    this.eVY.bPt.bLJ = paramInt;
    if (paramInt != 0)
      this.eVY.bPt.bPu = false;
    while (true)
    {
      if (this.eVY.gbX != null)
        this.eVY.gbX.run();
      be.uA().b(417, this);
      return;
      if (!paramBoolean)
      {
        com.tencent.mm.p.a locala2 = this.eVZ;
        if (locala2 != null)
        {
          locala2.field_brandFlag = (0xFFFFFFF7 & locala2.field_brandFlag);
          p.c(locala2);
        }
        this.eVY.bPt.bPu = false;
      }
      else
      {
        com.tencent.mm.p.a locala1 = this.eVZ;
        if (locala1 != null)
        {
          locala1.field_brandFlag = (0x8 | locala1.field_brandFlag);
          p.c(locala1);
        }
        this.eVY.bPt.bPu = true;
        c.anX();
        com.tencent.mm.plugin.wallet.protocal.a locala = c.anY().amX();
        if (locala.fcT.size() > 0)
        {
          com.tencent.mm.plugin.wallet.protocal.b localb = (com.tencent.mm.plugin.wallet.protocal.b)locala.fcT.getFirst();
          this.eVY.bPt.bPv = localb.fdc;
          this.eVY.bPt.bPx = localb.fda;
          this.eVY.bPt.bPw = localb.fdb;
          this.eVY.bPt.bPy = localb.fcY;
          this.eVY.bPt.bPz = localb.fcV;
          this.eVY.bPt.bPA = localb.fcW;
          this.eVY.bPt.bPB = localb.fcX;
          this.eVY.bPt.bPC = localb.fcZ;
        }
      }
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.RcptGetAddrEventListener", "onSceneEnd errType[%s], errCode[%s]", arrayOfObject);
    if ((paramx instanceof b))
    {
      if (paramInt2 == 0)
        k(paramInt2, true);
    }
    else
      return;
    k(paramInt2, false);
  }

  public final boolean a(e parame)
  {
    if ((parame instanceof er))
    {
      this.eVY = ((er)parame);
      be.uA().a(417, this);
      b localb = new b(this.eVY.bPs.url, this.eVY.bPs.appId, 1);
      be.uA().d(localb);
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.g
 * JD-Core Version:    0.6.2
 */