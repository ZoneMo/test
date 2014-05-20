package com.tencent.mm.ui.voicetranstext;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.ld;
import com.tencent.mm.protocal.a.le;
import com.tencent.mm.protocal.a.qu;
import com.tencent.mm.protocal.a.zk;
import com.tencent.mm.sdk.platformtools.aa;
import junit.framework.Assert;

public final class b extends x
  implements ab
{
  private final String TAG = "MicroMsg.NetSceneGetVoiceTransRes";
  private a htS;
  private m htT;
  private String htU;
  private zk hub;
  private int huf = -1;

  public b(String paramString)
  {
    if (!au.hX(paramString));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.htU = paramString;
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new ld());
      localb.b(new le());
      localb.es("/cgi-bin/micromsg-bin/getvoicetransres");
      localb.cN(548);
      localb.cO(0);
      localb.cP(0);
      this.htS = localb.wx();
      return;
    }
  }

  public final int a(r paramr, m paramm)
  {
    this.htT = paramm;
    ((ld)this.htS.wr()).fDC = this.htU;
    return a(paramr, this.htS, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      le localle = (le)this.htS.ws();
      if (localle.fDG != null)
        this.huf = localle.fDG.fTi;
      this.hub = localle.fDE;
    }
    while (true)
    {
      this.htT.a(paramInt2, paramInt3, paramString, this);
      return;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[1] = Integer.valueOf(paramInt3);
      aa.d("MicroMsg.NetSceneGetVoiceTransRes", "error get: errType:%d, errCode:%d", arrayOfObject);
    }
  }

  public final zk aPn()
  {
    return this.hub;
  }

  public final boolean aPr()
  {
    return (this.hub != null) && (!au.hX(this.hub.fZG));
  }

  public final int getInterval()
  {
    return this.huf;
  }

  public final int getType()
  {
    return 548;
  }

  public final boolean isComplete()
  {
    return (this.hub != null) && (this.hub.fAK == 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.b
 * JD-Core Version:    0.6.2
 */