package com.tencent.mm.plugin.webwx.ui;

import android.os.Bundle;
import android.widget.Button;
import com.tencent.mm.ui.MMActivity;

public class WebWeiXinIntroductionUI extends MMActivity
{
  private Button ffe;

  protected final void FR()
  {
    vT("");
    this.ffe = ((Button)findViewById(2131364271));
    this.ffe.setOnClickListener(new d(this));
    a(new e(this));
  }

  protected final int getLayoutId()
  {
    return 2130903865;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.ui.WebWeiXinIntroductionUI
 * JD-Core Version:    0.6.2
 */