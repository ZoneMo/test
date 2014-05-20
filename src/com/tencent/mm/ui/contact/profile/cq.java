package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

final class cq
  implements View.OnClickListener
{
  cq(cb paramcb)
  {
  }

  public final void onClick(View paramView)
  {
    cb localcb = this.gXl;
    h.a(NormalUserFooterPreference.b(localcb.gXk), NormalUserFooterPreference.b(localcb.gXk).getString(2131166283), NormalUserFooterPreference.b(localcb.gXk).getString(2131166282), new ct(localcb), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cq
 * JD-Core Version:    0.6.2
 */