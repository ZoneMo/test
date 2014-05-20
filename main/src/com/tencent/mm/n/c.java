package com.tencent.mm.n;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.rs;
import com.tencent.mm.protocal.m;
import com.tencent.mm.protocal.n;
import com.tencent.mm.protocal.p;

public final class c extends p
  implements n
{
  private int clD;
  private a clJ;
  private boolean clK;
  private int cmdId;

  public c(a parama, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.clJ = parama;
    this.clD = paramInt1;
    this.cmdId = paramInt2;
    this.clK = paramBoolean;
  }

  public final int getCmdId()
  {
    return this.cmdId;
  }

  public final int wy()
  {
    return this.clD;
  }

  public final byte[] wz()
  {
    if (this.clK)
      ((rs)this.clJ).a(m.b(this));
    return this.clJ.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.c
 * JD-Core Version:    0.6.2
 */