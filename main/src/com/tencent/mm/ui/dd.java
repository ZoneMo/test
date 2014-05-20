package com.tencent.mm.ui;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

final class dd
  implements ba
{
  dd(cy paramcy, LayoutListenerView paramLayoutListenerView)
  {
  }

  public final void aEI()
  {
    int[] arrayOfInt = new int[2];
    this.gnD.getLocationOnScreen(arrayOfInt);
    if (cy.aFr() == arrayOfInt[1])
      return;
    cy.mJ(arrayOfInt[1]);
    if (cy.aFh() == 0)
    {
      cy.mH(cy.aFr());
      aa.v("MicroMsg.MMActivity", "yy onLayout baseTop:" + cy.aFh());
    }
    aa.v("MicroMsg.MMActivity", "yy onLayout top:" + (cy.aFr() - cy.aFh()));
    cy.e(this.gom).putExtra("top", cy.aFr() - cy.aFh());
    this.gom.aal().sendBroadcast(cy.e(this.gom), "com.tencent.mm.permission.MM_MESSAGE");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dd
 * JD-Core Version:    0.6.2
 */