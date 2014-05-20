package com.tencent.mm.ui.applet;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ab;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.tools.WebViewUI;

public final class x
  implements m
{
  private Activity bOt;
  private ch cOe;
  private ay efG = new ay(new y(this), false);
  private ab gxO;

  public x(Activity paramActivity)
  {
    this.bOt = paramActivity;
  }

  private void we(String paramString)
  {
    this.efG.azn();
    if (this.cOe != null)
      this.cOe.dismiss();
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    localIntent.putExtra("title", this.bOt.getString(2131166316));
    localIntent.putExtra("zoom", true);
    localIntent.putExtra("vertical_scroll", false);
    localIntent.setClass(this.bOt, WebViewUI.class);
    this.bOt.startActivity(localIntent);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    be.uA().b(205, this);
    ab localab = (ab)paramx;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      we(localab.getURL());
      return;
    }
    if (paramInt1 != 4)
      aa.e("MicroMsg.ViewTWeibo", "view weibo failed: " + paramInt1 + ", " + paramInt2);
    we("http://t.qq.com/" + localab.Cu());
  }

  public final void bb(String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      aa.e("MicroMsg.ViewTWeibo", "null weibo id");
      return;
    }
    be.uA().a(205, this);
    this.gxO = new ab(au.hW(paramString1).replace("http://t.qq.com/", "").trim(), paramString2);
    be.uA().d(this.gxO);
    this.efG.bO(3000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.x
 * JD-Core Version:    0.6.2
 */