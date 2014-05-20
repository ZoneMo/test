package com.tencent.mm.ui.bindmobile;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.aa;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.storage.e;

final class s
  implements View.OnClickListener
{
  s(BindMContactIntroUI paramBindMContactIntroUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (BindMContactIntroUI.b(this.gIR) == aa.crd)
    {
      be.uz().sr().set(12322, Boolean.valueOf(false));
      ag.a(this.gIR, new t(this));
      return;
    }
    Intent localIntent = new Intent(this.gIR, MobileFriendUI.class);
    this.gIR.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.s
 * JD-Core Version:    0.6.2
 */