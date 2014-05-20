package com.tencent.mm.ui.bindmobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.e;

final class at
  implements DialogInterface.OnClickListener
{
  at(FindMContactIntroUI paramFindMContactIntroUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uz().sr().set(12322, Boolean.valueOf(true));
    FindMContactIntroUI.f(this.gJj);
    com.tencent.mm.plugin.a.b.jdMethod_if(be.uv() + "," + this.gJj.getClass().getName() + ",R300_200_phone," + be.ds("R300_200_phone") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.at
 * JD-Core Version:    0.6.2
 */