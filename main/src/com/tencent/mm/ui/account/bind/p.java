package com.tencent.mm.ui.account.bind;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class p
  implements View.OnClickListener
{
  p(BindMobileVerifyUI paramBindMobileVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    this.gvL.SM();
    Intent localIntent = new Intent();
    Bundle localBundle = new Bundle();
    localBundle.putString("bindmcontact_mobile", BindMobileVerifyUI.b(this.gvL));
    localBundle.putInt("voice_verify_type", 4);
    localIntent.putExtras(localBundle);
    a.cHS.e(this.gvL, localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.p
 * JD-Core Version:    0.6.2
 */