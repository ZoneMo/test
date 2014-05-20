package com.tencent.mm.pluginsdk.ui.simley;

import android.content.Context;
import com.tencent.mm.pluginsdk.ui.SmileyGrid;
import com.tencent.mm.ui.base.MMRadioImageButton;

public final class q extends e
{
  public q(String paramString, int paramInt, g paramg, k paramk, MMRadioImageButton paramMMRadioImageButton, boolean paramBoolean)
  {
    super(paramString, paramInt, paramg, paramk, paramMMRadioImageButton, paramBoolean);
  }

  public final Object getItem(int paramInt)
  {
    Context localContext = this.fsV.getContext();
    r localr = new r();
    localr.setIndex(paramInt);
    localr.a(this);
    localr.setContext(localContext);
    if (localr.auI())
      return localr.auH();
    return new SmileyGrid(localContext);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.q
 * JD-Core Version:    0.6.2
 */