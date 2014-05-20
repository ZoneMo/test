package com.tencent.mm.ui.tools;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebSettings;
import android.webkit.WebView;

final class hg
  implements View.OnTouchListener
{
  hg(WebViewUI paramWebViewUI)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (WebViewUI.i(this.hnv) != null)
      WebViewUI.i(this.hnv).setVisibility(8);
    switch (paramMotionEvent.getAction())
    {
    default:
      if (this.hnv.cOj != null)
        break;
    case 0:
    case 1:
    }
    while ((paramMotionEvent.getAction() != 0) && (paramMotionEvent.getAction() != 5) && (paramMotionEvent.getAction() != 5) && (paramMotionEvent.getAction() != 261) && (paramMotionEvent.getAction() != 517))
    {
      return false;
      if (paramView.hasFocus())
        break;
      paramView.requestFocus();
      break;
    }
    if (paramMotionEvent.getPointerCount() > 1)
    {
      this.hnv.cOj.getSettings().setBuiltInZoomControls(true);
      this.hnv.cOj.getSettings().setSupportZoom(true);
      return false;
    }
    this.hnv.cOj.getSettings().setBuiltInZoomControls(false);
    this.hnv.cOj.getSettings().setSupportZoom(false);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hg
 * JD-Core Version:    0.6.2
 */