package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.l.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;

final class cx
  implements MenuItem.OnMenuItemClickListener
{
  cx(SettingsModifyEmailAddrUI paramSettingsModifyEmailAddrUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    SettingsModifyEmailAddrUI.a(this.hfu, SettingsModifyEmailAddrUI.b(this.hfu).getText().toString().trim());
    if (!au.hT(SettingsModifyEmailAddrUI.c(this.hfu)))
    {
      h.c(this.hfu.aal(), 2131165336, 2131167675);
      return true;
    }
    Integer localInteger = (Integer)be.uz().sr().get(7);
    if ((localInteger != null) && ((0x2 & localInteger.intValue()) != 0));
    for (boolean bool = true; ; bool = false)
    {
      Boolean localBoolean = Boolean.valueOf(bool);
      if ((SettingsModifyEmailAddrUI.c(this.hfu).equals(SettingsModifyEmailAddrUI.d(this.hfu))) && (localBoolean.booleanValue()))
        break;
      a locala = new a(a.ckf, SettingsModifyEmailAddrUI.c(this.hfu));
      be.uA().d(locala);
      SettingsModifyEmailAddrUI localSettingsModifyEmailAddrUI1 = this.hfu;
      SettingsModifyEmailAddrUI localSettingsModifyEmailAddrUI2 = this.hfu;
      this.hfu.getString(2131167675);
      SettingsModifyEmailAddrUI.a(localSettingsModifyEmailAddrUI1, h.a(localSettingsModifyEmailAddrUI2, this.hfu.getString(2131166097), true, new cy(this, locala)));
      this.hfu.SM();
      return true;
    }
    this.hfu.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.cx
 * JD-Core Version:    0.6.2
 */