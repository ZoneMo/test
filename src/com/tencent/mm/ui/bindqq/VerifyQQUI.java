package com.tencent.mm.ui.bindqq;

import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.c.a.cq;
import com.tencent.mm.c.a.cs;
import com.tencent.mm.c.a.ct;
import com.tencent.mm.c.a.cu;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public class VerifyQQUI extends MMWizardActivity
  implements m
{
  private String bNV;
  private String bNX;
  private ch cHU = null;
  private byte[] ckw = null;
  private String fbq = "";
  private long gJJ = 0L;
  private String gJK = "";
  private String gJL;
  private SecurityImage gof = null;

  protected final void FR()
  {
    cq localcq = new cq();
    localcq.bNT.context = this;
    com.tencent.mm.sdk.b.a.ayH().f(localcq);
    this.bNV = localcq.bNU.bNV;
    ct localct = new ct();
    com.tencent.mm.sdk.b.a.ayH().f(localct);
    this.bNX = localct.bNW.bNX;
    mn(n.bfX);
    a(new ad(this));
    EditText localEditText1 = (EditText)findViewById(com.tencent.mm.i.anR);
    EditText localEditText2 = (EditText)findViewById(com.tencent.mm.i.anQ);
    a(0, getString(n.bdY), new ae(this, localEditText1, localEditText2));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.VerifyQQUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cHU != null)
    {
      this.cHU.dismiss();
      this.cHU = null;
    }
    this.ckw = ((com.tencent.mm.o.a)paramx).xs();
    this.gJK = ((com.tencent.mm.o.a)paramx).xt();
    if (this.ckw != null)
      aa.d("MicroMsg.VerifyQQUI", "imgSid:" + this.gJK + " img len" + this.ckw.length + " " + j.qg());
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      com.tencent.mm.plugin.a.a.cHT.nE();
      h.a(aal(), n.bfU, n.bfV, new ag(this));
      return;
    }
    if (paramInt1 == 4);
    int i;
    switch (paramInt2)
    {
    default:
      i = 0;
    case -4:
    case -3:
    case -12:
    case -72:
    case -5:
    case -6:
    }
    while (i == 0)
    {
      int j = n.bmy;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(j, arrayOfObject), 0).show();
      return;
      h.c(aal(), n.bfW, n.bfR);
      i = 1;
      continue;
      h.c(aal(), n.bfO, n.bfR);
      i = 1;
      continue;
      h.c(aal(), n.bfQ, n.ber);
      i = 1;
      continue;
      h.c(aal(), n.bfP, n.ber);
      i = 1;
      continue;
      aa.d("MicroMsg.VerifyQQUI", "imgSid:" + this.gJK + " img len" + this.ckw.length + " " + j.qg());
      if (be.se())
        break label432;
      i = 1;
    }
    label432: if (this.gof == null)
      this.gof = com.tencent.mm.ui.applet.i.a(aal(), n.bvU, false, this.ckw, this.gJK, this.gJL, new ah(this), null, new aj(this), new ak(this));
    while (true)
    {
      i = 1;
      break;
      aa.d("MicroMsg.VerifyQQUI", "imgSid:" + this.gJK + " img len" + this.ckw.length + " " + j.qg());
      this.gof.b(false, this.ckw, this.gJK, this.gJL);
    }
  }

  protected final int getLayoutId()
  {
    return k.aSK;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(144, this);
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(144, this);
  }

  protected void onResume()
  {
    super.onResume();
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.VerifyQQUI
 * JD-Core Version:    0.6.2
 */