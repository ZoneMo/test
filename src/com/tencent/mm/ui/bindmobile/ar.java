package com.tencent.mm.ui.bindmobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.a;

final class ar
  implements DialogInterface.OnClickListener
{
  ar(FindMContactIntroUI paramFindMContactIntroUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uz().sr().set(12322, Boolean.valueOf(true));
    com.tencent.mm.plugin.a.b.ie("R200_100");
    Intent localIntent = new Intent();
    localIntent.putExtra("mobile_input_purpose", 4);
    localIntent.putExtra("regsetinfo_ticket", FindMContactIntroUI.c(this.gJj));
    localIntent.putExtra("regsetinfo_NextStep", FindMContactIntroUI.d(this.gJj));
    localIntent.putExtra("regsetinfo_NextStyle", FindMContactIntroUI.e(this.gJj));
    a.cHS.a(this.gJj, localIntent);
    com.tencent.mm.plugin.a.b.ie("R300_300_phone");
    com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + this.gJj.getClass().getName() + ",R300_200_phone," + be.ds("R300_200_phone") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ar
 * JD-Core Version:    0.6.2
 */