package com.tencent.mm.ui.account;

import android.os.Bundle;
import com.tencent.mm.k.a;

final class am extends a
{
  am(FacebookFriendUI paramFacebookFriendUI)
  {
  }

  public final void e(Bundle paramBundle)
  {
    super.e(paramBundle);
  }

  public final void onError(int paramInt, String paramString)
  {
    super.onError(paramInt, paramString);
    if (paramInt == 3)
      FacebookFriendUI.f(this.gpZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.am
 * JD-Core Version:    0.6.2
 */