package com.tencent.mm.ui.bindqq;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.a.j;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.s;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public class BindQQUI extends MMWizardActivity
  implements m
{
  private ch cHU;
  private String gIO = null;
  private View gJp;
  private int type = 0;

  protected final void FR()
  {
    this.gJp = findViewById(i.aNS);
    long l = new j(cj.c((Integer)be.uz().sr().get(9))).longValue();
    if (l == 0L)
    {
      mn(n.bfM);
      TextView localTextView3 = (TextView)findViewById(i.aJy);
      localTextView3.setVisibility(0);
      this.gJp.setVisibility(8);
      localTextView3.setText(n.bfL);
      ((TextView)findViewById(i.aJz)).setVisibility(8);
      Button localButton = (Button)findViewById(i.anP);
      localButton.setVisibility(0);
      localButton.setOnClickListener(new c(this));
    }
    while (this.type == 1)
    {
      a(0, getString(n.bea), new a(this));
      return;
      mn(n.bfK);
      TextView localTextView1 = (TextView)findViewById(i.aJy);
      localTextView1.setVisibility(0);
      localTextView1.setText(n.bfI);
      TextView localTextView2 = (TextView)findViewById(i.aJz);
      localTextView2.setVisibility(0);
      localTextView2.setText(getString(n.bfJ) + l);
      this.gJp.setVisibility(0);
      this.gJp.setOnClickListener(new d(this));
    }
    a(new b(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.BindQQUI", "onSceneEnd " + paramInt1 + " errCode " + paramInt2 + " errMsg " + paramString + "  " + paramx.getType());
    if (this.cHU != null)
    {
      this.cHU.dismiss();
      this.cHU = null;
    }
    if (paramx.getType() == 254)
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        this.gIO = ((s)paramx).Cg();
        if ((this.gIO != null) && (this.gIO.length() > 0))
          be.uz().sr().set(102407, this.gIO);
        localac = new com.tencent.mm.modelsimple.ac(2);
        be.uA().d(localac);
      }
    while (paramx.getType() != 255)
    {
      do
      {
        com.tencent.mm.modelsimple.ac localac;
        return;
        if (this.cHU != null)
        {
          this.cHU.dismiss();
          this.cHU = null;
        }
        if (paramInt2 == -81)
        {
          h.a(this, n.byi, n.ber, null);
          return;
        }
        if (paramInt2 == -82)
        {
          h.a(this, n.byj, n.ber, null);
          return;
        }
        if (paramInt2 == -83)
        {
          h.a(this, n.byg, n.ber, null);
          return;
        }
        if (paramInt2 == -84)
        {
          h.a(this, n.byh, n.ber, null);
          return;
        }
        if (paramInt2 == -85)
        {
          h.a(this, n.byf, n.ber, null);
          return;
        }
      }
      while (paramInt2 != -86);
      h.a(this, n.byl, n.ber, null);
      return;
    }
    if (paramInt2 == 0)
    {
      j(this, new Intent(this, StartUnbindQQ.class));
      return;
    }
    h.a(this, n.byk, n.ber, null);
  }

  protected final int getLayoutId()
  {
    return k.aSJ;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.type = getIntent().getIntExtra("bindqq_regbymobile", 0);
    be.uA().a(254, this);
    be.uA().a(255, this);
  }

  public void onDestroy()
  {
    be.uA().b(254, this);
    be.uA().b(255, this);
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.BindQQUI
 * JD-Core Version:    0.6.2
 */