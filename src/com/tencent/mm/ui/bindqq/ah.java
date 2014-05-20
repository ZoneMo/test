package com.tencent.mm.ui.bindqq;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.o.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class ah
  implements DialogInterface.OnClickListener
{
  ah(VerifyQQUI paramVerifyQQUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.VerifyQQUI", "imgSid:" + VerifyQQUI.g(this.gJM) + " img len" + VerifyQQUI.h(this.gJM).length + " " + j.qg());
    a locala = new a(VerifyQQUI.b(this.gJM), VerifyQQUI.c(this.gJM), VerifyQQUI.i(this.gJM).aGt(), VerifyQQUI.i(this.gJM).aGu(), VerifyQQUI.i(this.gJM).aGv(), VerifyQQUI.d(this.gJM), VerifyQQUI.e(this.gJM));
    be.uA().d(locala);
    VerifyQQUI localVerifyQQUI = this.gJM;
    Activity localActivity = this.gJM.aal();
    this.gJM.getString(n.bfV);
    VerifyQQUI.a(localVerifyQQUI, h.a(localActivity, this.gJM.getString(n.bfN), true, new ai(this, locala)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.ah
 * JD-Core Version:    0.6.2
 */