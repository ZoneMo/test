package com.tencent.mm.ui.tools;

import android.util.Pair;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.ui.base.h;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

final class ch
  implements MenuItem.OnMenuItemClickListener
{
  ch(ImageGalleryUI paramImageGalleryUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    cr localcr = new cr(this.hkn, (byte)0);
    localcr.a(this.hkn.getString(2131165631), new ci(this));
    localcr.a(this.hkn.getString(2131165627), new cj(this));
    if (ImageGalleryUI.a(this.hkn, ImageGalleryUI.a(this.hkn).getSelectedItemPosition()))
      localcr.a(this.hkn.getString(2131166704), new ck(this));
    if (a.qc("favorite"))
      localcr.a(this.hkn.getString(2131167820), new cl(this));
    int i = localcr.hkv.keySet().size();
    String[] arrayOfString1 = new String[i];
    Callable[] arrayOfCallable1 = new Callable[i];
    Pair localPair = new Pair((String[])localcr.hkv.keySet().toArray(arrayOfString1), (Callable[])localcr.hkv.values().toArray(arrayOfCallable1));
    String[] arrayOfString2 = (String[])localPair.first;
    Callable[] arrayOfCallable2 = (Callable[])localPair.second;
    h.c(this.hkn.aal(), "", arrayOfString2, "", new cm(this, arrayOfCallable2));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ch
 * JD-Core Version:    0.6.2
 */