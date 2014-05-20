package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class e
  implements View.OnClickListener
{
  e(ActionBarSearchView paramActionBarSearchView)
  {
  }

  public final void onClick(View paramView)
  {
    if (g.hgI == ActionBarSearchView.c(this.hgG))
    {
      aa.d("MicroMsg.ActionBarSearchView", "on status btn click, cur status is clear");
      this.hgG.em(true);
    }
    do
    {
      return;
      aa.d("MicroMsg.ActionBarSearchView", "on status btn click, cur status is voice search");
    }
    while (ActionBarSearchView.b(this.hgG) == null);
    ActionBarSearchView.b(this.hgG).aMK();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.e
 * JD-Core Version:    0.6.2
 */