package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class do
  implements View.OnClickListener
{
  do(dm paramdm)
  {
  }

  public final void onClick(View paramView)
  {
    if (NormalUserFooterPreference.a(this.gXw.gXk).rd())
    {
      w.d(NormalUserFooterPreference.a(this.gXw.gXk));
      NormalUserFooterPreference.a(this.gXw.gXk).qL();
      be.uA().d(new com.tencent.mm.z.i(5));
      this.gXw.aLg();
      return;
    }
    h.a(this.gXw.gXk.getContext(), this.gXw.gXk.getContext().getString(2131166239), this.gXw.gXk.getContext().getString(2131166237), new dp(this), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.do
 * JD-Core Version:    0.6.2
 */