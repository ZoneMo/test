package com.tencent.mm.ui.tools;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.e;

final class m
  implements View.OnClickListener
{
  m(BrowserChooseActivity paramBrowserChooseActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (BrowserChooseActivity.c(this.hhl) != null)
    {
      be.uz().sr().set(274528, BrowserChooseActivity.c(this.hhl).hhr.activityInfo.packageName);
      BrowserChooseActivity.a(this.hhl, BrowserChooseActivity.c(this.hhl), BrowserChooseActivity.e(this.hhl), BrowserChooseActivity.f(this.hhl));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.m
 * JD-Core Version:    0.6.2
 */