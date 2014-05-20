package com.tencent.mm.ui.tools.jsapi;

import android.app.ProgressDialog;
import com.tencent.mm.model.au;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class al
  implements au
{
  al(p paramp, ao paramao)
  {
  }

  public final void g(String paramString, boolean paramBoolean)
  {
    if (p.a(this.hpx) == null)
    {
      aa.w("MicroMsg.MsgHandler", "getNow callback, msghandler has already been detached!");
      p.a(this.hpx, this.hpy, "add_contact:fail", null);
      return;
    }
    if ((p.d(this.hpx) == null) || (!p.d(this.hpx).equals(paramString)))
    {
      p.a(this.hpx, this.hpy, "add_contact:fail", null);
      return;
    }
    if (p.e(this.hpx) != null)
      p.e(this.hpx).dismiss();
    p.a(this.hpx, be.uz().su().tO(paramString));
    if ((p.f(this.hpx) == null) || (p.f(this.hpx).rj() == 0))
    {
      aa.i("MicroMsg.MsgHandler", "doAddContact, no contact with username = " + paramString + ", try get by alias");
      p.a(this.hpx, be.uz().su().tL(paramString));
    }
    p.b(this.hpx, p.f(this.hpx));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.al
 * JD-Core Version:    0.6.2
 */