package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelsimple.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.fq;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bt;
import com.tencent.mm.ui.cx;

public class SettingsAliasUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private ProgressDialog cIr = null;
  private fq gsS = null;
  private EditText hff;
  private w hfg;
  private boolean hfh = false;
  private String wN;

  protected final void FR()
  {
    mn(2131166124);
    this.gsS = new fq(this);
    this.hff = ((EditText)findViewById(2131363662));
    if (!i.tD(v.th()))
      this.hff.setText(v.th());
    this.hff.setFocusable(true);
    this.hff.requestFocus();
    this.hff.setFocusableInTouchMode(true);
    this.hff.addTextChangedListener(new bp(this));
    a(new bq(this));
    a(getString(2131167685), new br(this), bt.gnO);
    dg(false);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i = 1;
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (this.hfh)
        com.tencent.mm.plugin.d.c.m.dZN.j(10358, "1");
      Toast.makeText(aal(), getString(2131166129), 0).show();
      SM();
      be.uz().sr().set(42, this.wN);
      new Handler().postDelayed(new bu(this), 1000L);
    }
    while (true)
    {
      return;
      if (cx.a(aal(), paramInt1, paramInt2, 4));
      while (i != 0)
      {
        return;
        switch (paramInt1)
        {
        default:
        case 4:
        }
        do
        {
          i = 0;
          break;
        }
        while ((paramInt2 != -7) && (paramInt2 != -10));
        h.c(aal(), 2131165392, 2131166131);
      }
    }
  }

  protected final int getLayoutId()
  {
    return 2130903687;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.hfh = getIntent().getBooleanExtra("KFromSetAliasTips", false);
    FR();
    be.uA().a(177, this);
  }

  public void onDestroy()
  {
    if (this.gsS != null)
      this.gsS.cancel();
    if (this.hfg != null)
      be.uA().c(this.hfg);
    be.uA().b(177, this);
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    if (this.gsS != null)
      this.gsS.cancel();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAliasUI
 * JD-Core Version:    0.6.2
 */