package com.tencent.mm.ui.account.mobile;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import com.tencent.mm.ui.account.FacebookLoginUI;
import com.tencent.mm.ui.account.RegByEmailUI;
import com.tencent.mm.ui.account.RegByMobileVoiceVerifyUI;
import com.tencent.mm.ui.account.RegByQQUI;
import com.tencent.mm.ui.base.cd;

final class dk
  implements cd
{
  dk(di paramdi)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 0:
      MobileVerifyUI.g(this.gxa.gwT);
      return;
    case 1:
      this.gxa.gwT.SM();
      if (MobileVerifyUI.f(this.gxa.gwT) == 2)
        com.tencent.mm.plugin.a.b.ie("R200_500");
      while (true)
      {
        Intent localIntent2 = new Intent(this.gxa.gwT, RegByMobileVoiceVerifyUI.class);
        Bundle localBundle = new Bundle();
        localBundle.putString("bindmcontact_mobile", this.gxa.gwT.bTR);
        localBundle.putInt("voice_verify_type", MobileVerifyUI.h(this.gxa.gwT));
        localIntent2.putExtras(localBundle);
        this.gxa.gwT.startActivity(localIntent2);
        return;
        if (MobileVerifyUI.f(this.gxa.gwT) == 1)
          com.tencent.mm.plugin.a.b.ie("L600_400");
        else if (MobileVerifyUI.f(this.gxa.gwT) == 3)
          com.tencent.mm.plugin.a.b.ie("F200_300");
      }
    case 2:
      com.tencent.mm.plugin.a.b.ie("R400_100_signup");
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this.gxa.gwT, RegByQQUI.class);
      localIntent1.putExtra("MMActivity.OverrideEnterAnimation", 0);
      localIntent1.putExtra("MMActivity.OverrideExitAnimation", com.tencent.mm.b.YF);
      this.gxa.gwT.startActivity(localIntent1);
      this.gxa.gwT.overridePendingTransition(com.tencent.mm.b.YH, com.tencent.mm.b.YG);
      return;
    case 3:
      com.tencent.mm.plugin.a.b.ie("L100_100_logout");
      this.gxa.gwT.startActivity(new Intent(this.gxa.gwT, FacebookLoginUI.class));
      return;
    case 4:
    }
    com.tencent.mm.plugin.a.b.ie("R500_100");
    this.gxa.gwT.startActivity(new Intent(this.gxa.gwT, RegByEmailUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.dk
 * JD-Core Version:    0.6.2
 */