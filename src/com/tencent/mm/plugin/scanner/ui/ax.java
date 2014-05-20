package com.tencent.mm.plugin.scanner.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.tools.dl;

final class ax
  implements View.OnClickListener
{
  ax(at paramat)
  {
  }

  public final void onClick(View paramView)
  {
    if (at.a(this.eey))
    {
      at.b(this.eey);
      return;
    }
    dl localdl = new dl(this.eey.getContext());
    localdl.a(new ay(this));
    localdl.b(new az(this));
    localdl.cB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ax
 * JD-Core Version:    0.6.2
 */