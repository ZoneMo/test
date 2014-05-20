package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.v;

final class fe
  implements v
{
  fe(fd paramfd)
  {
  }

  public final void bo(int paramInt)
  {
    if (paramInt == 0)
      MobileVerifyUIOld.k(this.gsg.gsa);
    do
    {
      return;
      if (paramInt == 1)
      {
        this.gsg.gsa.SM();
        b.ie("R200_500");
        Intent localIntent2 = new Intent(this.gsg.gsa, RegByMobileVoiceVerifyUI.class);
        Bundle localBundle = new Bundle();
        localBundle.putString("bindmcontact_mobile", MobileVerifyUIOld.m(this.gsg.gsa));
        localBundle.putInt("voice_verify_type", MobileVerifyUIOld.o(this.gsg.gsa));
        localIntent2.putExtras(localBundle);
        this.gsg.gsa.startActivity(localIntent2);
        return;
      }
    }
    while (paramInt != 2);
    b.ie("R200_400");
    Intent localIntent1 = new Intent(this.gsg.gsa, FacebookLoginUI.class);
    this.gsg.gsa.startActivity(localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fe
 * JD-Core Version:    0.6.2
 */