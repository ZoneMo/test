package com.tencent.mm.ui.bindqq;

import android.os.Bundle;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.ui.MMWizardActivity;

public class SuccUnbindQQ extends MMWizardActivity
{
  protected final void FR()
  {
    mn(n.bDo);
    a(0, getString(n.bdY), new ac(this));
  }

  protected final int getLayoutId()
  {
    return k.baJ;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.SuccUnbindQQ
 * JD-Core Version:    0.6.2
 */