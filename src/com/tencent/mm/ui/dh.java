package com.tencent.mm.ui;

final class dh
  implements bb
{
  private final int gnE = 50;

  dh(cy paramcy)
  {
  }

  public final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != 0) && (paramInt2 != 0) && (paramInt3 != 0) && (paramInt4 != 0) && (paramInt1 == paramInt3))
    {
      if ((paramInt2 <= paramInt4) || (paramInt2 - paramInt4 <= 50))
        break label45;
      cy.f(this.gom);
    }
    label45: 
    while ((paramInt4 <= paramInt2) || (paramInt4 - paramInt2 <= 50))
      return;
    cy.g(this.gom);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dh
 * JD-Core Version:    0.6.2
 */