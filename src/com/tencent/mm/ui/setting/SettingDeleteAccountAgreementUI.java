package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.widget.CheckedTextView;
import android.widget.TextView;
import com.tencent.mm.ui.MMActivity;

public class SettingDeleteAccountAgreementUI extends MMActivity
{
  protected final void FR()
  {
    TextView localTextView = (TextView)findViewById(2131363134);
    localTextView.setOnClickListener(new ae(this));
    CheckedTextView localCheckedTextView = (CheckedTextView)findViewById(2131363654);
    localCheckedTextView.setOnClickListener(new af(this, localTextView, localCheckedTextView));
    localTextView.setEnabled(localCheckedTextView.isChecked());
    a(new ag(this));
  }

  protected final int getLayoutId()
  {
    return 2130903682;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(2131167309);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingDeleteAccountAgreementUI
 * JD-Core Version:    0.6.2
 */