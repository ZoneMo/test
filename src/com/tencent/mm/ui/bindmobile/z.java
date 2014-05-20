package com.tencent.mm.ui.bindmobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.s;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class z
  implements DialogInterface.OnClickListener
{
  z(BindMContactIntroUI paramBindMContactIntroUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((BindMContactIntroUI.a(this.gIR) == null) || (BindMContactIntroUI.a(this.gIR).equals("")))
      return;
    s locals = new s(s.cxm);
    be.uA().d(locals);
    BindMContactIntroUI localBindMContactIntroUI1 = this.gIR;
    BindMContactIntroUI localBindMContactIntroUI2 = this.gIR;
    this.gIR.getString(n.ber);
    BindMContactIntroUI.a(localBindMContactIntroUI1, h.a(localBindMContactIntroUI2, this.gIR.getString(n.byr), true, new aa(this)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.z
 * JD-Core Version:    0.6.2
 */