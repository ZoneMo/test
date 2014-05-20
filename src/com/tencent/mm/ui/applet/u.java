package com.tencent.mm.ui.applet;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.a.j;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.contact.ContactQZoneWebView;

public final class u
  implements m
{
  private ch cOe;
  private Context context;
  private com.tencent.mm.modelsimple.x efF;
  private ay efG = new ay(new v(this), false);
  private String gxL;

  public u(Context paramContext)
  {
    this.context = paramContext;
  }

  private void wd(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.context, ContactQZoneWebView.class);
    localIntent.putExtra("rawUrl", this.context.getString(2131166369, new Object[] { paramString }));
    localIntent.putExtra("useJs", true);
    localIntent.putExtra("vertical_scroll", true);
    this.context.startActivity(localIntent);
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
        wd(this.gxL);
        return;
      }
      Intent localIntent = new Intent();
      localIntent.setClass(this.context, ContactQZoneWebView.class);
      localIntent.putExtra("rawUrl", str);
      localIntent.putExtra("useJs", true);
      localIntent.putExtra("vertical_scroll", true);
      this.context.startActivity(localIntent);
      return;
    }
    aa.e("MicroMsg.ViewQZone", "getA8Key fail, errType = " + paramInt1 + ", errCode = " + paramInt2);
    wd(this.gxL);
  }

  public final void mD(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.ViewQZone", "go fail, qqNum is null");
      return;
    }
    this.gxL = paramString;
    String str1 = (String)be.uz().sr().get(46);
    String str2 = cj.hW((String)be.uz().sr().get(72));
    aa.d("MicroMsg.ViewQZone", "get a2key:[%s], get new a2key:[%s]", new Object[] { str1, str2 });
    if ((cj.hX(str1)) && (cj.hX(str2)))
    {
      wd(paramString);
      return;
    }
    be.uA().a(233, this);
    this.efF = new com.tencent.mm.modelsimple.x(j.aw(paramString));
    be.uA().d(this.efF);
    this.efG.bO(3000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.u
 * JD-Core Version:    0.6.2
 */