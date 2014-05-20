package com.tencent.mapapi.map;

class aj extends ag
{
  private double TP = 0.0D;
  protected ah Wo = null;

  public aj(ah paramah)
  {
    this.Wo = paramah;
  }

  void lX()
  {
    if (ah.a(this.Wo) == null)
      return;
    ah.a(this.Wo).WW.a(this.TP);
    this.Wo.F(false);
    this.Wo = null;
  }

  final void md()
  {
    this.Wo = null;
  }

  public void run()
  {
    lX();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.aj
 * JD-Core Version:    0.6.2
 */