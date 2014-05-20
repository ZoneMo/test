package com.tencent.mm.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.c.a.m;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;

final class da
  implements View.OnClickListener
{
  da(cy paramcy)
  {
  }

  public final void onClick(View paramView)
  {
    m localm = new m();
    localm.bLU.type = 1;
    a.ayH().f(localm);
    cy.b(this.gom).setVisibility(8);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.da
 * JD-Core Version:    0.6.2
 */