package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.scanner.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.ch;

public final class bx
  implements m
{
  private ch cOe;
  private Context context;
  private com.tencent.mm.modelsimple.x efF;
  private ay efG = new ay(new by(this), false);
  private String url;

  public bx(Context paramContext)
  {
    this.context = paramContext;
  }

  private void mE(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("rawUrl", paramString);
    localIntent.putExtra("useJs", true);
    localIntent.putExtra("vertical_scroll", true);
    a.Tm().h(localIntent, this.context);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    this.efG.azn();
    if (this.cOe != null)
      this.cOe.dismiss();
    be.uA().b(233, this);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      String str = ((com.tencent.mm.modelsimple.x)paramx).Cl();
      if ((str == null) || (str.length() == 0))
      {
        mE(this.url);
        return;
      }
      mE(str);
      return;
    }
    aa.e("MicroMsg.scanner.ViewMMURL", "getA8Key fail, errType = " + paramInt1 + ", errCode = " + paramInt2);
    mE(this.url);
  }

  public final void mD(String paramString)
  {
    if (!this.efG.azG())
    {
      aa.e("MicroMsg.scanner.ViewMMURL", "already running, skipped");
      return;
    }
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.scanner.ViewMMURL", "go fail, qqNum is null");
      return;
    }
    this.url = paramString;
    String str = (String)be.uz().sr().get(46);
    if ((str == null) || (str.length() == 0))
    {
      mE(paramString);
      return;
    }
    be.uA().a(233, this);
    this.efF = new com.tencent.mm.modelsimple.x(paramString, null, 4, 0);
    be.uA().d(this.efF);
    this.efG.bO(3000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bx
 * JD-Core Version:    0.6.2
 */