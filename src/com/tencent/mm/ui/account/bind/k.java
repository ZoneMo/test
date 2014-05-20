package com.tencent.mm.ui.account.bind;

import android.content.Intent;
import android.widget.CheckBox;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.friend.cw;

final class k
  implements cw
{
  k(BindMobileUI paramBindMobileUI, String paramString)
  {
  }

  public final void mN(int paramInt)
  {
    int i = 1;
    if (paramInt == i)
      if (BindMobileUI.h(this.gvD))
      {
        localBindMobileUI = this.gvD;
        if (!BindMobileUI.i(this.gvD).isChecked())
        {
          j = i;
          if (BindMobileUI.j(this.gvD).isChecked())
            break label74;
          BindMobileStatusUI.a(localBindMobileUI, j, i);
          BindMobileUI.k(this.gvD);
        }
      }
    label74: 
    while (paramInt != 2)
    {
      while (true)
      {
        BindMobileUI localBindMobileUI;
        int j;
        return;
        int k = 0;
        continue;
        i = 0;
      }
      Intent localIntent = new Intent(this.gvD, BindMobileStatusUI.class);
      localIntent.putExtra("kstyle_bind_wording", BindMobileUI.l(this.gvD));
      localIntent.putExtra("kstyle_bind_recommend_show", BindMobileUI.m(this.gvD));
      localIntent.putExtra("Kfind_friend_by_mobile_flag", BindMobileUI.i(this.gvD).isChecked());
      localIntent.putExtra("Krecom_friends_by_mobile_flag", BindMobileUI.j(this.gvD).isChecked());
      MMWizardActivity.j(this.gvD, localIntent);
      return;
    }
    BindMobileUI.d(this.gvD, this.gvE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.k
 * JD-Core Version:    0.6.2
 */