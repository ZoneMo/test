package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.os.Bundle;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.r;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.a.a.d;
import com.tencent.mm.ui.a.a.g;

final class i
  implements g
{
  private i(BindFacebookUI paramBindFacebookUI)
  {
  }

  public final void a(d paramd)
  {
    aa.d("MicroMsg.BindFacebookUI", "onError:" + paramd.getMessage());
    com.tencent.mm.ui.base.h.p(this.gpB, paramd.getMessage(), this.gpB.getString(n.bhG));
    BindFacebookUI.dj(false);
  }

  public final void a(com.tencent.mm.ui.a.a.h paramh)
  {
    aa.d("MicroMsg.BindFacebookUI", "onFacebookError:" + paramh.aLM());
    com.tencent.mm.ui.base.h.p(this.gpB, paramh.getMessage(), this.gpB.getString(n.bhG));
    BindFacebookUI.dj(false);
  }

  public final void e(Bundle paramBundle)
  {
    aa.d("MicroMsg.BindFacebookUI", "token:" + BindFacebookUI.c(this.gpB).aLK());
    be.uz().sr().set(65830, BindFacebookUI.c(this.gpB).aLK());
    if (BindFacebookUI.c(this.gpB).aLL() != 0L)
      be.uz().sr().set(65832, Long.valueOf(BindFacebookUI.c(this.gpB).aLL()));
    String str1 = this.gpB.getString(n.ber);
    String str2 = this.gpB.getString(n.bke);
    BindFacebookUI.a(this.gpB, ProgressDialog.show(this.gpB, str1, str2, true));
    BindFacebookUI.e(this.gpB).setOnCancelListener(BindFacebookUI.d(this.gpB));
    BindFacebookUI.a(this.gpB, new r(1, BindFacebookUI.c(this.gpB).aLK()));
    be.uA().d(BindFacebookUI.a(this.gpB));
    BindFacebookUI.dj(true);
  }

  public final void onCancel()
  {
    aa.d("MicroMsg.BindFacebookUI", "onCancel");
    BindFacebookUI.dj(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.i
 * JD-Core Version:    0.6.2
 */