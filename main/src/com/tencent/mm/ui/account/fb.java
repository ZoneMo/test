package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.v;

final class fb
  implements v
{
  fb(fa paramfa, boolean paramBoolean)
  {
  }

  public final void bo(int paramInt)
  {
    if (paramInt == 0)
      MobileVerifyUIOld.k(this.gsf.gsa);
    do
    {
      do
      {
        return;
        if (paramInt == 1)
        {
          this.gsf.gsa.SM();
          if (MobileVerifyUIOld.o(this.gsf.gsa) == 0)
            b.ie("R200_500");
          while (true)
          {
            Intent localIntent3 = new Intent(this.gsf.gsa, RegByMobileVoiceVerifyUI.class);
            Bundle localBundle = new Bundle();
            localBundle.putString("bindmcontact_mobile", MobileVerifyUIOld.m(this.gsf.gsa));
            localBundle.putInt("voice_verify_type", MobileVerifyUIOld.o(this.gsf.gsa));
            localIntent3.putExtras(localBundle);
            this.gsf.gsa.startActivity(localIntent3);
            return;
            if (MobileVerifyUIOld.o(this.gsf.gsa) == 3)
              b.ie("L600_400");
            else if (MobileVerifyUIOld.o(this.gsf.gsa) == 2)
              b.ie("F200_300");
          }
        }
      }
      while (!MobileVerifyUIOld.n(this.gsf.gsa));
      if (paramInt == 2)
      {
        b.ie("L100_100_logout");
        Intent localIntent2 = new Intent(this.gsf.gsa, FacebookLoginUI.class);
        this.gsf.gsa.startActivity(localIntent2);
        return;
      }
    }
    while ((paramInt != 3) || (!this.gse));
    b.ie("R500_100");
    Intent localIntent1 = new Intent(this.gsf.gsa, RegByEmailUI.class);
    this.gsf.gsa.startActivity(localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fb
 * JD-Core Version:    0.6.2
 */