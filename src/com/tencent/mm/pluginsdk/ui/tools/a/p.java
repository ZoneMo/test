package com.tencent.mm.pluginsdk.ui.tools.a;

public final class p
{
  private o fwQ;
  private j fwR;
  private t fwS;
  private int fwT = -1;
  private e fwU;

  public final void a(j paramj)
  {
    this.fwR = paramj;
  }

  public final void a(o paramo)
  {
    this.fwQ = paramo;
  }

  public final e avh()
  {
    return this.fwU;
  }

  public final void b(e parame)
  {
    this.fwU = parame;
  }

  public final void b(t paramt)
  {
    this.fwS = paramt;
  }

  public final void lb(int paramInt)
  {
    this.fwT = paramInt;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(200);
    localStringBuilder.append("<<\n");
    localStringBuilder.append(" mode: ");
    localStringBuilder.append(this.fwQ);
    localStringBuilder.append("\n ecLevel: ");
    localStringBuilder.append(this.fwR);
    localStringBuilder.append("\n version: ");
    localStringBuilder.append(this.fwS);
    localStringBuilder.append("\n maskPattern: ");
    localStringBuilder.append(this.fwT);
    if (this.fwU == null)
      localStringBuilder.append("\n matrix: null\n");
    while (true)
    {
      localStringBuilder.append(">>\n");
      return localStringBuilder.toString();
      localStringBuilder.append("\n matrix:\n");
      localStringBuilder.append(this.fwU.toString());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.p
 * JD-Core Version:    0.6.2
 */