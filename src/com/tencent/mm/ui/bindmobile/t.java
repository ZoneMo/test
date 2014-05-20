package com.tencent.mm.ui.bindmobile;

import android.widget.Button;
import com.tencent.mm.modelfriend.aa;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n;

final class t
  implements Runnable
{
  t(s params)
  {
  }

  public final void run()
  {
    if (z.zn())
    {
      BindMContactIntroUI.aIy();
      BindMContactIntroUI.c(this.gIU.gIR).setText(this.gIU.gIR.getString(n.beZ));
      BindMContactIntroUI.a(this.gIU.gIR, aa.crc);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.t
 * JD-Core Version:    0.6.2
 */