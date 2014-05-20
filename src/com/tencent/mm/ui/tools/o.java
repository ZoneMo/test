package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger;

final class o
  implements View.OnClickListener
{
  o(BrowserChooseActivity paramBrowserChooseActivity)
  {
  }

  public final void onClick(View paramView)
  {
    w localw;
    if (BrowserChooseActivity.a(this.hhl) != null)
    {
      localw = BrowserChooseActivity.a(this.hhl).aMM();
      if (localw != w.hhA)
        break label124;
      if ((BrowserChooseActivity.b(this.hhl) != null) && (BrowserChooseActivity.b(this.hhl).isShowing()))
      {
        BrowserChooseActivity.a(this.hhl).a(w.hhB);
        BrowserChooseActivity.a(this.hhl).notifyDataSetChanged();
      }
      this.hhl.aal();
      FileDownloadManger.g("http://mdc.html5.qq.com/d/directdown.jsp?channel_id=10318", "qq_browser.apk", "", "qq_browser_apk_md5");
      localm = m.dZN;
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(2);
      localm.d(10998, arrayOfObject);
    }
    label124: 
    while (localw != w.hhC)
    {
      m localm;
      Object[] arrayOfObject;
      return;
    }
    this.hhl.cj(BrowserChooseActivity.g(this.hhl));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.o
 * JD-Core Version:    0.6.2
 */