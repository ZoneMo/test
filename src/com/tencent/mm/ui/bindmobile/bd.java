package com.tencent.mm.ui.bindmobile;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.MMWizardActivity;

final class bd
  implements View.OnClickListener
{
  bd(MobileFriendUI paramMobileFriendUI)
  {
  }

  public final void onClick(View paramView)
  {
    MMWizardActivity.j(this.gJo, new Intent(this.gJo, BindMContactIntroUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.bd
 * JD-Core Version:    0.6.2
 */