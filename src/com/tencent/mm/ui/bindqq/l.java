package com.tencent.mm.ui.bindqq;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.o.a;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class l
  implements DialogInterface.OnClickListener
{
  l(g paramg)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a locala = new a(v.tg(), g.a(this.gJv), g.b(this.gJv).aGt(), g.b(this.gJv).aGu(), g.b(this.gJv).aGv(), 3);
    be.uA().d(locala);
    g localg = this.gJv;
    Context localContext = g.c(this.gJv);
    g.c(this.gJv).getString(n.ber);
    g.a(localg, h.a(localContext, g.c(this.gJv).getString(n.bpZ), true, new m(this, locala)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.l
 * JD-Core Version:    0.6.2
 */