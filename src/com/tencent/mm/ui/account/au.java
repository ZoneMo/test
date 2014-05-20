package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.a.a.d;
import com.tencent.mm.ui.a.a.e;
import com.tencent.mm.ui.a.a.g;

final class au
  implements g
{
  private au(FacebookLoginUI paramFacebookLoginUI)
  {
  }

  public final void a(d paramd)
  {
    aa.d("MicroMsg.FacebookLoginUI", "onError:" + paramd.getMessage());
    com.tencent.mm.ui.base.h.p(this.gqc, paramd.getMessage(), this.gqc.getString(com.tencent.mm.n.bhG));
    FacebookLoginUI.dl(false);
    b.jdMethod_if(be.uv() + "," + this.gqc.getClass().getName() + ",L14," + be.ds("L14") + ",2");
  }

  public final void a(com.tencent.mm.ui.a.a.h paramh)
  {
    aa.d("MicroMsg.FacebookLoginUI", "onFacebookError:" + paramh.aLM());
    com.tencent.mm.ui.base.h.p(this.gqc, paramh.getMessage(), this.gqc.getString(com.tencent.mm.n.bhG));
    FacebookLoginUI.dl(false);
    b.jdMethod_if(be.uv() + "," + this.gqc.getClass().getName() + ",L14," + be.ds("L14") + ",2");
  }

  public final void e(Bundle paramBundle)
  {
    aa.d("MicroMsg.FacebookLoginUI", "token:" + FacebookLoginUI.b(this.gqc).aLK());
    String str1 = this.gqc.getString(com.tencent.mm.n.ber);
    String str2 = this.gqc.getString(com.tencent.mm.n.bke);
    FacebookLoginUI.a(this.gqc, ProgressDialog.show(this.gqc, str1, str2, true));
    FacebookLoginUI.d(this.gqc).setOnCancelListener(FacebookLoginUI.c(this.gqc));
    FacebookLoginUI.a(this.gqc, new com.tencent.mm.modelsimple.n("facebook@wechat_auth", FacebookLoginUI.b(this.gqc).aLK(), "", "", ""));
    be.uA().d(FacebookLoginUI.a(this.gqc));
    FacebookLoginUI.dl(true);
    b.jdMethod_if(be.uv() + "," + this.gqc.getClass().getName() + ",L14," + be.ds("L14") + ",2");
  }

  public final void onCancel()
  {
    aa.d("MicroMsg.FacebookLoginUI", "onCancel");
    FacebookLoginUI.dl(false);
    b.jdMethod_if(be.uv() + "," + this.gqc.getClass().getName() + ",L14," + be.ds("L14") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.au
 * JD-Core Version:    0.6.2
 */