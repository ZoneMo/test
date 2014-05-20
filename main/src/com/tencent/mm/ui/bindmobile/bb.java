package com.tencent.mm.ui.bindmobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class bb
  implements DialogInterface.OnCancelListener
{
  bb(MobileFriendUI paramMobileFriendUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (MobileFriendUI.a(this.gJo) != null)
      be.uA().c(MobileFriendUI.a(this.gJo));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.bb
 * JD-Core Version:    0.6.2
 */