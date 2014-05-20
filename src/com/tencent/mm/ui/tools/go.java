package com.tencent.mm.ui.tools;

import android.graphics.Bitmap;
import android.view.MenuItem;
import android.widget.ImageView;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.af;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ca;

final class go
  implements ca
{
  go(WebViewUI paramWebViewUI)
  {
  }

  public final void a(ImageView paramImageView, MenuItem paramMenuItem)
  {
    String str1 = paramMenuItem.getTitle();
    if (WebViewUI.l(this.hnv).get(str1) != null)
      paramImageView.setImageBitmap((Bitmap)WebViewUI.l(this.hnv).get(str1));
    while (true)
    {
      return;
      aa.w("MicroMsg.WebViewUI", "on attach icon, load from cache fail");
      try
      {
        String str2 = this.hnv.cOg.pW(str1);
        if (!cj.hX(str2))
        {
          Bitmap localBitmap = en.nb(str2);
          if (localBitmap != null)
          {
            paramImageView.setImageBitmap(localBitmap);
            WebViewUI.l(this.hnv).put(str1, localBitmap);
            return;
          }
        }
      }
      catch (Exception localException)
      {
        aa.w("MicroMsg.WebViewUI", "getheadimg, ex = " + localException.getMessage());
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.go
 * JD-Core Version:    0.6.2
 */