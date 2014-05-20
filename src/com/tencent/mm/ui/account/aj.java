package com.tencent.mm.ui.account;

import android.widget.TextView;
import com.tencent.mm.model.v;
import com.tencent.mm.ui.bd;

final class aj
  implements bd
{
  aj(FacebookFriendUI paramFacebookFriendUI, TextView paramTextView)
  {
  }

  public final void FW()
  {
    if ((v.tE()) && (FacebookFriendUI.a(this.gpZ)))
    {
      if (FacebookFriendUI.b(this.gpZ).getCount() != 0)
        break label46;
      this.cIv.setVisibility(0);
    }
    while (true)
    {
      FacebookFriendUI.c(this.gpZ);
      return;
      label46: this.cIv.setVisibility(8);
    }
  }

  public final void FX()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.aj
 * JD-Core Version:    0.6.2
 */