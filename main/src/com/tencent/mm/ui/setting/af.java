package com.tencent.mm.ui.setting;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckedTextView;
import android.widget.TextView;

final class af
  implements View.OnClickListener
{
  af(SettingDeleteAccountAgreementUI paramSettingDeleteAccountAgreementUI, TextView paramTextView, CheckedTextView paramCheckedTextView)
  {
  }

  public final void onClick(View paramView)
  {
    this.hen.setEnabled(this.heo.isChecked());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.af
 * JD-Core Version:    0.6.2
 */