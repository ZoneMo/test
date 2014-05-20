package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;

final class o
  implements View.OnClickListener
{
  o(m paramm)
  {
  }

  public final void onClick(View paramView)
  {
    aa.v("MicroMsg.FMessageConversationUI", "on delView clicked");
    this.haR.cPN.aik();
    if (this.haR.cPM != null)
      this.haR.cPM.V(paramView.getTag());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.o
 * JD-Core Version:    0.6.2
 */