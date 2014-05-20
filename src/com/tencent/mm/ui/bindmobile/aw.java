package com.tencent.mm.ui.bindmobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class aw
  implements DialogInterface.OnCancelListener
{
  aw(FindMContactIntroUI paramFindMContactIntroUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (FindMContactIntroUI.i(this.gJj) != null)
    {
      be.uA().b(431, FindMContactIntroUI.i(this.gJj));
      FindMContactIntroUI.j(this.gJj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.aw
 * JD-Core Version:    0.6.2
 */