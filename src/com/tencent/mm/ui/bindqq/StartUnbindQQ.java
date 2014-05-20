package com.tencent.mm.ui.bindqq;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.i;
import com.tencent.mm.m.af;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelsimple.aq;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public class StartUnbindQQ extends MMWizardActivity
  implements com.tencent.mm.n.m
{
  private ch cHU;
  private View dUs;
  private TextView dUu;
  private EditText dUv;
  private com.tencent.mm.ui.base.x gJF;
  private View gJp;

  protected final void FR()
  {
    mn(n.bDo);
    this.gJp = findViewById(i.aJA);
    this.dUs = View.inflate(this, com.tencent.mm.k.aZn, null);
    this.dUu = ((TextView)this.dUs.findViewById(i.aIZ));
    this.dUu.setText(getString(n.byX));
    this.dUv = ((EditText)this.dUs.findViewById(i.aIY));
    this.dUv.setInputType(129);
    a(new y(this));
    this.gJp.setOnClickListener(new z(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa.d("MicroMsg.StartUnbindQQ", "onSceneEnd " + paramInt1 + " errCode " + paramInt2 + " errMsg " + paramString + "  " + paramx.getType());
    if (paramx.getType() == 384)
    {
      String str3 = ((aq)paramx).zC();
      if ((paramInt1 == 0) && (paramInt2 == 0) && (!cj.hX(str3)))
      {
        com.tencent.mm.o.b localb = new com.tencent.mm.o.b(str3);
        be.uA().d(localb);
      }
    }
    do
    {
      do
      {
        return;
        if (this.cHU != null)
        {
          this.cHU.dismiss();
          this.cHU = null;
        }
        h.a(this, n.byW, n.ber, null);
        return;
      }
      while (paramx.getType() != 253);
      if (this.cHU != null)
      {
        this.cHU.dismiss();
        this.cHU = null;
      }
    }
    while ((paramInt1 != 0) || (paramInt2 != 0));
    int i = cj.a((Integer)be.uz().sr().get(9), 0);
    aa.d("MicroMsg.StartUnbindQQ", "iBindUin " + i);
    if (i != 0)
      be.uz().sz().eH(new com.tencent.mm.a.j(i) + "@qqim");
    Object localObject = be.uz().sr().get(102407, null);
    if ((localObject != null) && (((String)localObject).length() > 0))
    {
      be.uz().sr().set(3, localObject);
      be.uz().sr().set(102407, null);
    }
    try
    {
      com.tencent.mm.sdk.b.a.ayH().f(new com.tencent.mm.c.a.j());
      int j = cj.a((Integer)be.uz().sr().get(9), 0);
      String str1 = new com.tencent.mm.a.j(j) + "@qqim";
      be.uz().sz().eH(str1);
      be.uz().su().tU(str1);
      af.wm().er(str1);
      String str2 = v.th() + "@qqim";
      af.wm().er(str2);
      af.vJ().i(str1, false);
      af.vJ().i(str1, true);
      af.vJ().i(str2, false);
      af.vJ().i(str2, true);
      com.tencent.mm.plugin.a.a.cHT.nE();
      label492: be.uz().sr().set(9, Integer.valueOf(0));
      ho localho = new ho();
      localho.bRi.bRj = false;
      localho.bRi.bRk = true;
      com.tencent.mm.sdk.b.a.ayH().f(localho);
      finish();
      return;
    }
    catch (Exception localException)
    {
      break label492;
    }
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.baI;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(384, this);
    be.uA().a(253, this);
  }

  public void onDestroy()
  {
    be.uA().b(384, this);
    be.uA().b(253, this);
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.StartUnbindQQ
 * JD-Core Version:    0.6.2
 */