package com.tencent.mm.modelsimple;

import com.tencent.mm.n.m;
import com.tencent.mm.n.w;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;

public final class y extends x
  implements ab
{
  private m cjh;
  private final aj cmF = new w();

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    aa.e("MicroMsg.NetSceneGetCert", "dkcert onGYNetEnd [%d,%d]", arrayOfObject);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 381;
  }

  public final boolean wN()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.y
 * JD-Core Version:    0.6.2
 */