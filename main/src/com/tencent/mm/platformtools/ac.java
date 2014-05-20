package com.tencent.mm.platformtools;

import android.view.View.OnClickListener;

public final class ac
{
  private int bLY;
  private String cGQ;
  private View.OnClickListener cGS;
  private int type;

  public ac()
  {
  }

  private ac(ab paramab)
  {
    this.type = paramab.cGO.getValue();
    this.bLY = paramab.cGP.getValue();
    this.cGQ = paramab.cGQ;
    this.cGS = paramab.cGR;
  }

  public final ab FA()
  {
    return new ab(f.eL(this.type), e.eK(this.bLY), this.cGQ, this.cGS, (byte)0);
  }

  public final ac a(View.OnClickListener paramOnClickListener)
  {
    this.cGS = paramOnClickListener;
    return this;
  }

  public final ac eO(int paramInt)
  {
    this.type = paramInt;
    return this;
  }

  public final ac eP(int paramInt)
  {
    this.bLY = paramInt;
    return this;
  }

  public final ac hO(String paramString)
  {
    this.cGQ = paramString;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.ac
 * JD-Core Version:    0.6.2
 */