package com.tencent.mm.n;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.protocal.a.uh;
import com.tencent.mm.protocal.m;
import com.tencent.mm.protocal.o;
import com.tencent.mm.protocal.q;

public final class d extends q
  implements o
{
  private a clJ = null;
  private boolean clK;
  private int cmdId;

  public d(a parama, int paramInt, boolean paramBoolean)
  {
    this.clJ = parama;
    this.cmdId = paramInt;
    this.clK = paramBoolean;
  }

  public final int getCmdId()
  {
    return this.cmdId;
  }

  public final int s(byte[] paramArrayOfByte)
  {
    this.clJ = this.clJ.n(paramArrayOfByte);
    if (this.clK)
    {
      m.a(this, ((rt)this.clJ).ayf());
      return ((rt)this.clJ).ayf().fAY;
    }
    return ((uh)this.clJ).getRet();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.d
 * JD-Core Version:    0.6.2
 */