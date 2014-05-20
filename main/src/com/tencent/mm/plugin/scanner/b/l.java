package com.tencent.mm.plugin.scanner.b;

public final class l
{
  private static l egs;
  private byte[] egt = null;
  private byte[] egu = null;

  public static l aaR()
  {
    if (egs == null)
      egs = new l();
    return egs;
  }

  public final void aaS()
  {
    if (this.egt != null)
      this.egt = null;
    if (this.egu != null)
      this.egu = null;
  }

  public final byte[] hJ(int paramInt)
  {
    if (this.egt == null)
      this.egt = new byte[paramInt];
    while (true)
    {
      return this.egt;
      if (this.egt.length != paramInt)
      {
        this.egt = null;
        this.egt = new byte[paramInt];
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.l
 * JD-Core Version:    0.6.2
 */