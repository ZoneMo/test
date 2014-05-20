package com.tencent.mm.ui.account;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.a.a.e;

final class la
  implements View.OnClickListener
{
  la(ShowNonWeixinFriendUI paramShowNonWeixinFriendUI)
  {
  }

  public final void onClick(View paramView)
  {
    e locale = new e("290293790992170");
    Bundle localBundle = new Bundle();
    localBundle.putString("message", this.gux.getString(n.bko));
    localBundle.putString("to", Long.toString(ShowNonWeixinFriendUI.a(this.gux)));
    locale.a(this.gux, "apprequests", localBundle, new lb(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.la
 * JD-Core Version:    0.6.2
 */