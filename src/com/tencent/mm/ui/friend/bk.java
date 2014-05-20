package com.tencent.mm.ui.friend;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.MenuItem;
import android.widget.TextView;
import com.tencent.mm.ui.base.cb;
import java.util.HashMap;

final class bk
  implements cb
{
  bk(bi parambi, HashMap paramHashMap, PackageManager paramPackageManager)
  {
  }

  public final void a(TextView paramTextView, MenuItem paramMenuItem)
  {
    String str = paramMenuItem.getTitle();
    paramTextView.setText(((ResolveInfo)this.hbG.get(str)).loadLabel(this.hbH).toString());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bk
 * JD-Core Version:    0.6.2
 */