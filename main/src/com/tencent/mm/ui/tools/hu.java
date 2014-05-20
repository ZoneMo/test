package com.tencent.mm.ui.tools;

public final class hu
{
  private int hnI = 0;

  protected hu(WebViewUI paramWebViewUI)
  {
  }

  public final void aOf()
  {
    if (this.hnI == 0)
      WebViewUI.L(this.hnv);
    this.hnI = (1 + this.hnI);
  }

  public final void aOg()
  {
    this.hnI = (-1 + this.hnI);
    if (this.hnI <= 0)
      WebViewUI.M(this.hnv);
  }

  public final boolean aOh()
  {
    return this.hnI > 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hu
 * JD-Core Version:    0.6.2
 */