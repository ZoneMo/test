package com.tencent.mm.ui.contact.profile;

import android.content.res.Resources;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.v;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.bx;

final class ch
  implements com.tencent.mm.ui.base.cc
{
  ch(cc paramcc)
  {
  }

  public final void a(bx parambx)
  {
    parambx.r(1, 2131166270, 2130838976);
    String str1;
    if (NormalUserFooterPreference.a(this.gXm.gXl.gXk).re())
    {
      str1 = NormalUserFooterPreference.b(this.gXm.gXl.gXk).getResources().getString(2131166249);
      parambx.a(2, str1, 2130838980);
      if ((a.qc("sns")) && ((0x8000 & v.tq()) == 0))
        parambx.r(3, 2131166258, 2130838965);
      parambx.r(4, 2131166257, 2130838978);
      if (!NormalUserFooterPreference.a(this.gXm.gXl.gXk).rd())
        break label192;
    }
    label192: for (String str2 = NormalUserFooterPreference.b(this.gXm.gXl.gXk).getString(2131166241); ; str2 = NormalUserFooterPreference.b(this.gXm.gXl.gXk).getString(2131166237))
    {
      parambx.a(5, str2, 2130838952);
      parambx.r(6, 2131166512, 2130838958);
      parambx.bi(7, 2131166248);
      return;
      str1 = NormalUserFooterPreference.b(this.gXm.gXl.gXk).getResources().getString(2131166250);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ch
 * JD-Core Version:    0.6.2
 */