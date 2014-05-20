package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ap;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;

final class dd
  implements MenuItem.OnMenuItemClickListener
{
  dd(SettingsModifyPasswordUI paramSettingsModifyPasswordUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    SettingsModifyPasswordUI.a(this.hfG, SettingsModifyPasswordUI.a(this.hfG).getText().toString().trim());
    SettingsModifyPasswordUI.b(this.hfG, SettingsModifyPasswordUI.b(this.hfG).getText().toString().trim());
    if (!SettingsModifyPasswordUI.d(this.hfG).equals(SettingsModifyPasswordUI.c(this.hfG)))
    {
      h.c(this.hfG, 2131165450, 2131165449);
      return true;
    }
    if (SettingsModifyPasswordUI.d(this.hfG).length() > 16)
    {
      h.c(this.hfG, 2131165451, 2131165449);
      return true;
    }
    if (au.ic(SettingsModifyPasswordUI.d(this.hfG)))
    {
      h.c(this.hfG, 2131165543, 2131165449);
      return true;
    }
    if (!au.hV(SettingsModifyPasswordUI.d(this.hfG)))
    {
      if ((SettingsModifyPasswordUI.d(this.hfG).length() >= 4) && (SettingsModifyPasswordUI.d(this.hfG).length() < 9))
      {
        h.c(this.hfG, 2131165331, 2131165449);
        return true;
      }
      h.c(this.hfG, 2131165332, 2131165449);
      return true;
    }
    this.hfG.SM();
    String str = (String)be.uz().sr().get(77830);
    ap localap = new ap(SettingsModifyPasswordUI.d(this.hfG), str);
    be.uA().d(localap);
    SettingsModifyPasswordUI localSettingsModifyPasswordUI1 = this.hfG;
    SettingsModifyPasswordUI localSettingsModifyPasswordUI2 = this.hfG;
    this.hfG.getString(2131167675);
    SettingsModifyPasswordUI.a(localSettingsModifyPasswordUI1, h.a(localSettingsModifyPasswordUI2, this.hfG.getString(2131166098), true, new de(this, localap)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dd
 * JD-Core Version:    0.6.2
 */