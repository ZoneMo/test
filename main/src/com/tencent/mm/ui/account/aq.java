package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class aq
  implements View.OnClickListener
{
  aq(FacebookFriendUI paramFacebookFriendUI)
  {
  }

  public final void onClick(View paramView)
  {
    this.gpZ.startActivity(new Intent(this.gpZ, FacebookAuthUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.aq
 * JD-Core Version:    0.6.2
 */