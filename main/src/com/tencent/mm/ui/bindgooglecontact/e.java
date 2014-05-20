package com.tencent.mm.ui.bindgooglecontact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class e
  implements DialogInterface.OnCancelListener
{
  e(BindGoogleContactIntroUI paramBindGoogleContactIntroUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(BindGoogleContactIntroUI.c(this.gHu));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.e
 * JD-Core Version:    0.6.2
 */