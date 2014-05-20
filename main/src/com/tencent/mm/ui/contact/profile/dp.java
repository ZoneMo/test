package com.tencent.mm.ui.contact.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;

final class dp
  implements DialogInterface.OnClickListener
{
  dp(do paramdo)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    w.c(NormalUserFooterPreference.a(this.gXx.gXw.gXk));
    NormalUserFooterPreference.a(this.gXx.gXw.gXk).qK();
    be.uA().d(new com.tencent.mm.z.i(5));
    this.gXx.gXw.aLg();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.dp
 * JD-Core Version:    0.6.2
 */