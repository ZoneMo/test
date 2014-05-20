package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aq;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class bi
  implements DialogInterface.OnClickListener
{
  bi(SettingsAccountInfoUI paramSettingsAccountInfoUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = SettingsAccountInfoUI.a(this.heS).getText().toString();
    SettingsAccountInfoUI.a(this.heS).setText("");
    SettingsAccountInfoUI.a(this.heS).clearFocus();
    this.heS.af(SettingsAccountInfoUI.a(this.heS));
    if ((str == null) || (str.equals("")))
    {
      h.a(this.heS, 2131165328, 2131167675, new bj(this));
      return;
    }
    aq localaq = new aq(1, str);
    be.uA().d(localaq);
    SettingsAccountInfoUI localSettingsAccountInfoUI1 = this.heS;
    SettingsAccountInfoUI localSettingsAccountInfoUI2 = this.heS;
    this.heS.getString(2131167675);
    SettingsAccountInfoUI.a(localSettingsAccountInfoUI1, h.a(localSettingsAccountInfoUI2, this.heS.getString(2131166097), true, new bk(this, localaq)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bi
 * JD-Core Version:    0.6.2
 */