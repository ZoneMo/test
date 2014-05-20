package com.tencent.mm.protocal;

import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.pc;

public final class ay extends q
  implements o
{
  public pc fyw = new pc();

  public final int getCmdId()
  {
    return 0;
  }

  public final int s(byte[] paramArrayOfByte)
  {
    this.fyw = new pc().bH(paramArrayOfByte);
    m.a(this, this.fyw.ayf());
    return this.fyw.ayf().fAY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.ay
 * JD-Core Version:    0.6.2
 */