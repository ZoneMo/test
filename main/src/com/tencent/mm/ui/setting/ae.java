package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class ae
  implements View.OnClickListener
{
  ae(SettingDeleteAccountAgreementUI paramSettingDeleteAccountAgreementUI)
  {
  }

  public final void onClick(View paramView)
  {
    this.hem.startActivity(new Intent(this.hem, SettingDeleteAccountInputPassUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ae
 * JD-Core Version:    0.6.2
 */