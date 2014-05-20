package com.tencent.mm.sandbox.a;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a.kw;
import com.tencent.mm.protocal.a.kx;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.j;
import java.util.LinkedList;

public final class a extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public a(int paramInt)
  {
    b localb = new b();
    localb.a(new kw());
    localb.b(new kx());
    localb.es("/cgi-bin/micromsg-bin/getupdateinfo");
    localb.cN(113);
    localb.cO(35);
    localb.cP(1000000035);
    this.cke = localb.wx();
    kw localkw = (kw)this.cke.wr();
    localkw.fMB = paramInt;
    localkw.fJD = j.bKo;
    if ((10012 == at.cHJ) && (at.cHK > 0))
      localkw.fJD = at.cHK;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(localkw.fMB);
    arrayOfObject[1] = Integer.valueOf(localkw.fJD);
    arrayOfObject[2] = Integer.valueOf(j.bKo);
    aa.d("MicroMsg.NetSceneGetUpdateInfo", "NetSceneGetUpdateInfo updateType:%d channel:%d release:%d", arrayOfObject);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int ayr()
  {
    return ((kx)this.cke.ws()).fME;
  }

  public final String ays()
  {
    return ((kx)this.cke.ws()).fMD;
  }

  public final int ayt()
  {
    return ((kx)this.cke.ws()).fMC;
  }

  public final String ayu()
  {
    return ((kx)this.cke.ws()).fMF;
  }

  public final String[] ayv()
  {
    kx localkx = (kx)this.cke.ws();
    String[] arrayOfString = new String[localkx.fMH.size()];
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      arrayOfString[j] = ((rw)localkx.fMH.get(j)).getString();
    return arrayOfString;
  }

  public final String ayw()
  {
    return ((kx)this.cke.ws()).fMI;
  }

  public final int getType()
  {
    return 11;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.a.a
 * JD-Core Version:    0.6.2
 */