package com.tencent.mm.ui.friend;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.MenuItem;
import android.widget.ImageView;
import com.tencent.mm.ui.base.ca;
import java.util.HashMap;

final class bj
  implements ca
{
  bj(bi parambi, HashMap paramHashMap, PackageManager paramPackageManager)
  {
  }

  public final void a(ImageView paramImageView, MenuItem paramMenuItem)
  {
    String str = paramMenuItem.getTitle();
    paramImageView.setImageDrawable(((ResolveInfo)this.hbG.get(str)).loadIcon(this.hbH));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bj
 * JD-Core Version:    0.6.2
 */