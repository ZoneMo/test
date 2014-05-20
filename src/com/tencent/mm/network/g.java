package com.tencent.mm.network;

import com.tencent.mm.sdk.platformtools.cj;

final class g
  implements Runnable
{
  g(String paramString)
  {
  }

  public final void run()
  {
    bh localbh = bk.Fh();
    if (cj.hX(this.cDT));
    for (byte[] arrayOfByte = null; ; arrayOfByte = this.cDT.getBytes())
    {
      localbh.onNotify(0, 268369923, arrayOfByte);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.g
 * JD-Core Version:    0.6.2
 */