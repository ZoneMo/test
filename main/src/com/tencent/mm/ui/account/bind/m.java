package com.tencent.mm.ui.account.bind;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.c.a.cq;
import com.tencent.mm.c.a.cs;
import com.tencent.mm.c.a.ct;
import com.tencent.mm.c.a.cu;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.ui.base.h;

final class m
  implements MenuItem.OnMenuItemClickListener
{
  m(BindMobileVerifyUI paramBindMobileVerifyUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str1 = BindMobileVerifyUI.a(this.gvL).getText().toString().trim();
    if (str1.equals(""))
    {
      h.c(this.gvL, com.tencent.mm.n.bfC, com.tencent.mm.n.ber);
      return true;
    }
    this.gvL.SM();
    cq localcq = new cq();
    localcq.bNT.context = this.gvL;
    a.ayH().f(localcq);
    String str2 = localcq.bNU.bNV;
    ct localct = new ct();
    a.ayH().f(localct);
    String str3 = localct.bNW.bNX;
    ai localai = new ai(BindMobileVerifyUI.b(this.gvL), 2, str1, "", str2, str3);
    be.uA().d(localai);
    BindMobileVerifyUI localBindMobileVerifyUI1 = this.gvL;
    BindMobileVerifyUI localBindMobileVerifyUI2 = this.gvL;
    this.gvL.getString(com.tencent.mm.n.ber);
    BindMobileVerifyUI.a(localBindMobileVerifyUI1, h.a(localBindMobileVerifyUI2, this.gvL.getString(com.tencent.mm.n.bfu), true, new n(this, localai)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.m
 * JD-Core Version:    0.6.2
 */