package com.tencent.mm.ui.setting;

import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.tools.p;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bt;
import com.tencent.mm.ui.widget.MMEditText;

public class SettingsModifyNameUI extends MMActivity
{
  private MMEditText hfA;

  protected final void FR()
  {
    mn(2131166000);
    this.hfA = ((MMEditText)findViewById(2131363665));
    this.hfA.setFilters(p.fux);
    MMEditText localMMEditText = this.hfA;
    localMMEditText.setText(com.tencent.mm.ao.b.e(this, (String)be.uz().sr().get(4), (int)this.hfA.getTextSize()));
    this.hfA.addTextChangedListener(new da(this));
    a(getString(2131167685), new db(this), bt.gnO);
    dg(false);
    a(new dc(this));
  }

  protected final int getLayoutId()
  {
    return 2130903689;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsModifyNameUI
 * JD-Core Version:    0.6.2
 */