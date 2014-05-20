package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.ct;
import com.tencent.mm.ui.ez;

final class ac
  implements MenuItem.OnMenuItemClickListener
{
  ac(SetTextSizeUI paramSetTextSizeUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ez.b(this.hel, SetTextSizeUI.a(this.hel));
    ct localct = ct.vB();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(SetTextSizeUI.b(this.hel));
    localct.a(25, arrayOfObject);
    this.hel.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ac
 * JD-Core Version:    0.6.2
 */