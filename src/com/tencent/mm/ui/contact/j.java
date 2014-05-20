package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;
import java.util.HashMap;

final class j
  implements View.OnClickListener
{
  j(i parami)
  {
  }

  public final void onClick(View paramView)
  {
    aa.v("MicroMsg.AddressAdapter", "on delView clicked");
    this.gSv.cPN.aik();
    if (this.gSv.dNc != null)
      this.gSv.dNc.V(((ViewStub)i.a(this.gSv).get(paramView)).getTag());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.j
 * JD-Core Version:    0.6.2
 */