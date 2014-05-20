package com.tencent.mm.model;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;

public final class cb extends x
  implements ab
{
  private final cd cjg;
  private m cjh;
  private final String cji;
  private long cjj;

  public cb(cd paramcd)
  {
    this(paramcd, null);
  }

  public cb(cd paramcd, String paramString)
  {
    this.cjg = paramcd;
    this.cji = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    c(paramr);
    this.cjh = paramm;
    this.cjj = cj.FE();
    be.ut().o(new cc(this));
    return 0;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if (this.cjg != null)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.cji;
      arrayOfObject[1] = Long.valueOf(cj.O(this.cjj));
      aa.e("MicroMsg.NetSceneLocalProxy", "local proxy [%s] end, cost=%d", arrayOfObject);
      this.cjg.a(super.wM());
    }
    this.cjh.a(0, 0, null, this);
  }

  public final int getType()
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cb
 * JD-Core Version:    0.6.2
 */