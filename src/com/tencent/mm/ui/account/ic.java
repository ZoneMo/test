package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class ic
  implements View.OnClickListener
{
  ic(RegByMobileVoiceVerifyUI paramRegByMobileVoiceVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    if ((RegByMobileVoiceVerifyUI.b(this.gte) == 0) || (RegByMobileVoiceVerifyUI.b(this.gte) == 2) || (RegByMobileVoiceVerifyUI.b(this.gte) == 3))
    {
      RegByMobileVoiceVerifyUI.a(this.gte, new ag(RegByMobileVoiceVerifyUI.c(this.gte), RegByMobileVoiceVerifyUI.d(this.gte), "", 1, RegByMobileVoiceVerifyUI.a(this.gte)));
      be.uA().d(RegByMobileVoiceVerifyUI.e(this.gte));
      h.a(this.gte, n.bfF, n.ber, new id(this));
    }
    while ((RegByMobileVoiceVerifyUI.b(this.gte) != 4) && (RegByMobileVoiceVerifyUI.b(this.gte) != 1))
      return;
    RegByMobileVoiceVerifyUI.a(this.gte, new ai(RegByMobileVoiceVerifyUI.c(this.gte), 1, "", 1, RegByMobileVoiceVerifyUI.a(this.gte)));
    be.uA().d(RegByMobileVoiceVerifyUI.f(this.gte));
    h.a(this.gte, n.bfF, n.ber, new ie(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ic
 * JD-Core Version:    0.6.2
 */