package com.tencent.mm.storage;

import com.tencent.mm.a.c;
import com.tencent.mm.am.a;
import com.tencent.mm.am.b;
import com.tencent.mm.protocal.a.op;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bs extends bz
{
  private op giS;

  public bs(int paramInt, String paramString1, String paramString2)
  {
    super(arrayOfObject);
    byte[] arrayOfByte1 = c.g(cj.hW(paramString1), 0, -1);
    this.giS = new op();
    this.giS.fPC = paramInt;
    op localop1 = this.giS;
    int i;
    op localop2;
    if (arrayOfByte1 == null)
    {
      i = 0;
      localop1.fPD = i;
      localop2 = this.giS;
      if (arrayOfByte1 != null)
        break label131;
    }
    label131: for (byte[] arrayOfByte2 = new byte[0]; ; arrayOfByte2 = arrayOfByte1)
    {
      localop2.fPE = new b(arrayOfByte2);
      this.giS.fPF = cj.hW(paramString2);
      return;
      i = arrayOfByte1.length;
      break;
    }
  }

  public final a aDb()
  {
    return this.giS;
  }

  public final int getCmdId()
  {
    return 35;
  }

  public final int zO()
  {
    return 121;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bs
 * JD-Core Version:    0.6.2
 */