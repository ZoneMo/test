package com.tencent.mm.ui.bindmobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.storage.e;

final class bc
  implements DialogInterface.OnClickListener
{
  bc(MobileFriendUI paramMobileFriendUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uz().sr().set(12322, Boolean.valueOf(false));
    ag.f(false, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.bc
 * JD-Core Version:    0.6.2
 */