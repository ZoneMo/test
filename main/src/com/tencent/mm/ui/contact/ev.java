package com.tencent.mm.ui.contact;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.dn;

final class ev
  implements AbsListView.OnScrollListener
{
  ev(SnsAddressUI paramSnsAddressUI)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < 2);
    while (cj.c((Boolean)be.uz().sr().get(12296)))
      return;
    be.uz().sr().set(12296, Boolean.valueOf(true));
    if (SnsAddressUI.d(this.gVF) != null)
      SnsAddressUI.d(this.gVF).dismiss();
    SnsAddressUI.a(this.gVF, dn.a(this.gVF, this.gVF.getString(2131165605), 4000L));
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ev
 * JD-Core Version:    0.6.2
 */