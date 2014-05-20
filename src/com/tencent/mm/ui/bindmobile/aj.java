package com.tencent.mm.ui.bindmobile;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.c.a.cq;
import com.tencent.mm.c.a.cs;
import com.tencent.mm.c.a.ct;
import com.tencent.mm.c.a.cu;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.ui.base.h;

final class aj
  implements View.OnClickListener
{
  aj(BindMContactVerifyUI paramBindMContactVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = BindMContactVerifyUI.a(this.gJd).getText().toString().trim();
    if (str1.equals(""))
    {
      h.c(this.gJd, n.bfC, n.ber);
      return;
    }
    this.gJd.SM();
    cq localcq = new cq();
    localcq.bNT.context = this.gJd;
    a.ayH().f(localcq);
    String str2 = localcq.bNU.bNV;
    ct localct = new ct();
    a.ayH().f(localct);
    String str3 = localct.bNW.bNX;
    int i = 2;
    if (BindMContactVerifyUI.b(this.gJd))
      i = 19;
    ai localai = new ai(BindMContactVerifyUI.c(this.gJd), i, str1, "", str2, str3);
    be.uA().d(localai);
    BindMContactVerifyUI localBindMContactVerifyUI1 = this.gJd;
    BindMContactVerifyUI localBindMContactVerifyUI2 = this.gJd;
    this.gJd.getString(n.ber);
    BindMContactVerifyUI.a(localBindMContactVerifyUI1, h.a(localBindMContactVerifyUI2, this.gJd.getString(n.bfu), true, new ak(this, localai)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.aj
 * JD-Core Version:    0.6.2
 */