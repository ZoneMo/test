package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.model.al;
import com.tencent.mm.model.am;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class af
  implements am
{
  af(ProductUI paramProductUI)
  {
  }

  public final void B(int paramInt1, int paramInt2)
  {
  }

  public final void onFinish()
  {
    if (this.ede.cIG != null)
      ProductUI.d(this.ede);
  }

  public final void onPause()
  {
    if (this.ede.cIG != null)
      ProductUI.d(this.ede);
  }

  public final void onResume()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = be.nS().op();
    arrayOfObject[1] = be.nS().getTitle();
    aa.e("MicroMsg.scanner.ProductUI", "setDownloadPlayerCallback : musicId=[%s], musicTitle=[%s]", arrayOfObject);
    if (this.ede.cIG != null)
      ProductUI.d(this.ede);
  }

  public final void onStart()
  {
    if (this.ede.cIG != null)
      ProductUI.d(this.ede);
  }

  public final void onStop()
  {
  }

  public final void pB()
  {
    if (this.ede.cIG != null)
      ProductUI.d(this.ede);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.af
 * JD-Core Version:    0.6.2
 */