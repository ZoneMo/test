package com.tencent.mm.ui.contact;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.dn;

final class dt
  implements AbsListView.OnScrollListener
{
  dt(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < 2);
    while (SelectContactUI.u(this.gVn))
      return;
    SelectContactUI.v(this.gVn);
    if (SelectContactUI.w(this.gVn) != null)
      SelectContactUI.w(this.gVn).dismiss();
    SelectContactUI.a(this.gVn, dn.a(this.gVn, this.gVn.getString(2131165605), 4000L));
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dt
 * JD-Core Version:    0.6.2
 */