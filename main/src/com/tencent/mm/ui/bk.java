package com.tencent.mm.ui;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class bk
  implements View.OnClickListener
{
  bk(MMActivity paramMMActivity, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.eeS != null)
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(this.eeS));
      this.gnB.startActivity(localIntent);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bk
 * JD-Core Version:    0.6.2
 */