package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnClickListener;

final class er
  implements View.OnClickListener
{
  er(SnsAddressUI paramSnsAddressUI)
  {
  }

  public final void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    if (localObject != null)
    {
      SnsAddressUI.b(this.gVF).wN((String)localObject);
      if (!SnsAddressUI.b(this.gVF).aKU())
        break label126;
      this.gVF.dV(true);
    }
    while (true)
    {
      SnsAddressUI.b(this.gVF, (String)localObject);
      SnsAddressUI localSnsAddressUI = this.gVF;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = this.gVF.getString(2131167684);
      arrayOfObject[1] = Integer.valueOf(SnsAddressUI.b(this.gVF).VL() + SnsAddressUI.c(this.gVF));
      arrayOfObject[2] = Integer.valueOf(SnsAddressUI.eut);
      localSnsAddressUI.wV(String.format("%s(%d/%d)", arrayOfObject));
      return;
      label126: this.gVF.dV(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.er
 * JD-Core Version:    0.6.2
 */