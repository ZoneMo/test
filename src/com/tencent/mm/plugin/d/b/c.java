package com.tencent.mm.plugin.d.b;

import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.mh;
import com.tencent.mm.protocal.m;
import com.tencent.mm.protocal.o;
import com.tencent.mm.protocal.q;

public final class c extends q
  implements o
{
  public mh dZr = new mh();

  public final int getCmdId()
  {
    return 1000000218;
  }

  public final int s(byte[] paramArrayOfByte)
  {
    this.dZr = new mh().bt(paramArrayOfByte);
    m.a(this, this.dZr.ayf());
    return this.dZr.ayf().fAY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.b.c
 * JD-Core Version:    0.6.2
 */