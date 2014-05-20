package com.tencent.mm.ui.contact.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.p.a;

final class f
  implements DialogInterface.OnClickListener
{
  f(e parame, a parama)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.gWc.field_hadAlert = 1;
    this.gWc.field_brandFlag = (0x4 | this.gWc.field_brandFlag);
    e.a(this.gWd, this.gWc, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.f
 * JD-Core Version:    0.6.2
 */