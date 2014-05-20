package com.tencent.mm.ui.bindgooglecontact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class l
  implements DialogInterface.OnCancelListener
{
  l(BindGoogleContactUI paramBindGoogleContactUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    BindGoogleContactUI.c(this.gHC);
    if (BindGoogleContactUI.d(this.gHC) != null)
      be.uA().c(BindGoogleContactUI.d(this.gHC));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.l
 * JD-Core Version:    0.6.2
 */