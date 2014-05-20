package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.storage.i;

final class t
  implements View.OnClickListener
{
  t(NormalUserHeaderPreference paramNormalUserHeaderPreference)
  {
  }

  public final void onClick(View paramView)
  {
    NormalUserHeaderPreference.d(this.fsu);
    Intent localIntent = new Intent();
    localIntent.putExtra("sns_permission_userName", NormalUserHeaderPreference.b(this.fsu).getUsername());
    localIntent.putExtra("sns_permission_anim", true);
    a.b(NormalUserHeaderPreference.a(this.fsu), "sns", ".ui.SnsPermissionUI", localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.t
 * JD-Core Version:    0.6.2
 */