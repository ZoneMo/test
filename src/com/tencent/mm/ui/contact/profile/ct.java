package com.tencent.mm.ui.contact.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

final class ct
  implements DialogInterface.OnClickListener
{
  ct(cb paramcb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = 1;
    switch (NormalUserFooterPreference.i(this.gXl.gXk))
    {
    default:
    case 18:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 25:
    case 9:
    case 58:
    case 59:
    case 60:
    }
    while (true)
    {
      v localv = new v(NormalUserFooterPreference.a(this.gXl.gXk).getUsername(), i);
      be.uA().d(localv);
      h.p(NormalUserFooterPreference.b(this.gXl.gXk), NormalUserFooterPreference.b(this.gXl.gXk).getString(2131166285), NormalUserFooterPreference.b(this.gXl.gXk).getString(2131166286));
      return;
      if (NormalUserFooterPreference.j(this.gXl.gXk))
      {
        i = 2;
        continue;
        if (NormalUserFooterPreference.j(this.gXl.gXk))
        {
          i = 4;
        }
        else
        {
          i = 3;
          continue;
          i = 7;
          continue;
          if (NormalUserFooterPreference.j(this.gXl.gXk))
          {
            i = 6;
          }
          else
          {
            i = 5;
            continue;
            i = 9;
            continue;
            i = 58;
            continue;
            i = 59;
            continue;
            i = 60;
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ct
 * JD-Core Version:    0.6.2
 */