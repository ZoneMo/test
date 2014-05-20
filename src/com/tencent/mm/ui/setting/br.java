package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.v;
import com.tencent.mm.ui.base.h;

final class br
  implements MenuItem.OnMenuItemClickListener
{
  br(SettingsAliasUI paramSettingsAliasUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    SettingsAliasUI.a(this.hfi, SettingsAliasUI.b(this.hfi).getText().toString().trim());
    if (v.th().equalsIgnoreCase(SettingsAliasUI.c(this.hfi)))
    {
      this.hfi.SM();
      this.hfi.finish();
      return true;
    }
    Activity localActivity = this.hfi.aal();
    SettingsAliasUI localSettingsAliasUI = this.hfi;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = SettingsAliasUI.c(this.hfi);
    h.a(localActivity, localSettingsAliasUI.getString(2131166128, arrayOfObject), this.hfi.getString(2131167675), new bs(this), null);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.br
 * JD-Core Version:    0.6.2
 */