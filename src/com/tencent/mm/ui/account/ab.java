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

final class ab
  implements g
{
  private ab(FacebookAuthUI paramFacebookAuthUI)
  {
  }

  public final void a(d paramd)
  {
    aa.d("MicroMsg.FacebookAuthUI", "onError:" + paramd.getMessage());
    com.tencent.mm.ui.base.h.p(this.gpS, paramd.getMessage(), this.gpS.getString(n.bhG));
    FacebookAuthUI.dk(false);
  }

  public final void a(com.tencent.mm.ui.a.a.h paramh)
  {
    aa.d("MicroMsg.FacebookAuthUI", "onFacebookError:" + paramh.aLM());
    com.tencent.mm.ui.base.h.p(this.gpS, paramh.getMessage(), this.gpS.getString(n.bhG));
    FacebookAuthUI.dk(false);
  }

  public final void e(Bundle paramBundle)
  {
    aa.d("MicroMsg.FacebookAuthUI", "token:" + FacebookAuthUI.e(this.gpS).aLK());
    be.uz().sr().set(65830, FacebookAuthUI.e(this.gpS).aLK());
    if (FacebookAuthUI.e(this.gpS).aLL() != 0L)
      be.uz().sr().set(65832, Long.valueOf(FacebookAuthUI.e(this.gpS).aLL()));
    String str1 = this.gpS.getString(n.ber);
    String str2 = this.gpS.getString(n.bke);
    FacebookAuthUI.a(this.gpS, ProgressDialog.show(this.gpS, str1, str2, true));
    FacebookAuthUI.d(this.gpS).setOnCancelListener(FacebookAuthUI.c(this.gpS));
    FacebookAuthUI.a(this.gpS, new r(1, FacebookAuthUI.e(this.gpS).aLK()));
    be.uA().d(FacebookAuthUI.a(this.gpS));
    FacebookAuthUI.dk(true);
  }

  public final void onCancel()
  {
    aa.d("MicroMsg.FacebookAuthUI", "onCancel");
    FacebookAuthUI.dk(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ab
 * JD-Core Version:    0.6.2
 */