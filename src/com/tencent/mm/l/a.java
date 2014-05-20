package com.tencent.mm.l;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bk;
import com.tencent.mm.protocal.a.bl;

public final class a extends x
  implements ab
{
  public static int ckf = 1;
  public static int ckg = 2;
  private m cjh;
  private com.tencent.mm.n.a cke;

  public a(int paramInt, String paramString)
  {
    b localb = new b();
    localb.a(new bk());
    localb.b(new bl());
    localb.es("/cgi-bin/micromsg-bin/bindemail");
    localb.cN(256);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    bk localbk = (bk)this.cke.wr();
    localbk.fBj = paramInt;
    localbk.fBk = paramString;
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

  public final int getType()
  {
    return 256;
  }

  public final int vI()
  {
    return ((bk)this.cke.wr()).fBj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.l.a
 * JD-Core Version:    0.6.2
 */