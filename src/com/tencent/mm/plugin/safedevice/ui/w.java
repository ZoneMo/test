package com.tencent.mm.plugin.safedevice.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class w
  implements View.OnClickListener
{
  w(SecurityAccountIntroUI paramSecurityAccountIntroUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!SecurityAccountIntroUI.a(this.eaB));
    for (Object localObject = new ag(SecurityAccountIntroUI.b(this.eaB), 10, "", "", SecurityAccountIntroUI.c(this.eaB)); ; localObject = new ai(SecurityAccountIntroUI.b(this.eaB), 10, "", 0, ""))
    {
      be.uA().d((com.tencent.mm.n.x)localObject);
      SecurityAccountIntroUI localSecurityAccountIntroUI1 = this.eaB;
      SecurityAccountIntroUI localSecurityAccountIntroUI2 = this.eaB;
      this.eaB.getString(n.ber);
      SecurityAccountIntroUI.a(localSecurityAccountIntroUI1, h.a(localSecurityAccountIntroUI2, this.eaB.getString(n.bwS), true, new x(this, (com.tencent.mm.n.x)localObject)));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.w
 * JD-Core Version:    0.6.2
 */