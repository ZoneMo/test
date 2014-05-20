package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

public class NewTaskUI extends Activity
  implements m
{
  static NewTaskUI hlK;
  private ProgressDialog cIr = null;
  private SecurityImage gof = null;
  private cs hlL = new cs();

  public static NewTaskUI aNC()
  {
    return hlK;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((this.cIr != null) && (this.cIr.isShowing()))
      this.cIr.dismiss();
    if ((paramInt1 != 4) || (paramInt2 != -6))
    {
      hlK = null;
      finish();
      return;
    }
    if ((paramx instanceof com.tencent.mm.modelsimple.i))
    {
      com.tencent.mm.modelsimple.i locali = (com.tencent.mm.modelsimple.i)paramx;
      this.hlL.username = locali.Cd();
      this.hlL.hkw = locali.Ce();
      this.hlL.hkx = locali.Cf();
      this.hlL.grs = locali.BW();
      this.hlL.grr = locali.zR();
      this.hlL.grp = locali.zS();
      this.hlL.grq = locali.BX();
      aa.d("MicroMsg.NewTaskUI", "imgSid:" + this.hlL.grp + " img len" + this.hlL.grr.length + " " + j.qg());
    }
    if (this.gof == null)
    {
      this.gof = com.tencent.mm.ui.applet.i.a(this, 2131165411, this.hlL.grs, this.hlL.grr, this.hlL.grp, this.hlL.grq, new eh(this), new ej(this), new ek(this), this.hlL);
      return;
    }
    aa.d("MicroMsg.NewTaskUI", "imgSid:" + this.hlL.grp + " img len" + this.hlL.grr.length + " " + j.qg());
    this.gof.b(this.hlL.grs, this.hlL.grr, this.hlL.grp, this.hlL.grq);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903575);
    be.uA().a(380, this);
    hlK = this;
    com.tencent.mm.modelsimple.i locali = new com.tencent.mm.modelsimple.i();
    be.uA().d(locali);
    getString(2131167675);
    this.cIr = h.a(this, getString(2131165569), true, new eg(this, locali));
  }

  public void onDestroy()
  {
    if (equals(hlK))
      hlK = null;
    if ((this.cIr != null) && (this.cIr.isShowing()))
      this.cIr.dismiss();
    if (this.gof != null)
      this.gof.dismiss();
    be.uA().b(380, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.NewTaskUI
 * JD-Core Version:    0.6.2
 */