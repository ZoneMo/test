package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.widget.TextView;
import com.tencent.mm.ui.MMActivity;

public class SettingDeleteAccountUI extends MMActivity
{
  protected final void FR()
  {
    a(new aj(this));
    ((TextView)findViewById(2131363653)).setOnClickListener(new ak(this));
  }

  protected final int getLayoutId()
  {
    return 2130903681;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(2131167309);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingDeleteAccountUI
 * JD-Core Version:    0.6.2
 */