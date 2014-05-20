package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.View.OnLongClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.bx;

final class di
  implements View.OnLongClickListener
{
  di(dg paramdg, View.OnCreateContextMenuListener paramOnCreateContextMenuListener)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    aa.v("MicroMsg.MMSubMenuHelper", "registerForContextMenu normal view long click");
    dg.a(this.hlp).clear();
    this.hlo.onCreateContextMenu(dg.a(this.hlp), paramView, null);
    this.hlp.aNy();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.di
 * JD-Core Version:    0.6.2
 */