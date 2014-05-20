package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.ad;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.cl;
import java.util.LinkedList;

public class BakChatRecoverCheckUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private static String TAG = "MicroMsg.BakChatRecoverCheckUI";
  private LinearLayout cLT;
  private LinearLayout cLU;
  private TextView cLV;
  private TextView cLW;
  private TextView cLX;
  private ImageView cLY;
  private Button cLZ;
  private LinearLayout cMa;
  private LinearLayout cMb;
  private LinearLayout cMc;
  private ProgressBar cMd;
  private int cMe = -1;
  private boolean cMf = false;

  private void HR()
  {
    this.cMa.setVisibility(0);
    this.cMb.setVisibility(8);
    this.cMc.setVisibility(8);
    this.cMd.setVisibility(8);
    this.cLT.setVisibility(8);
  }

  private void HS()
  {
    this.cLT.setVisibility(0);
    this.cMc.setVisibility(8);
    this.cMd.setVisibility(8);
    this.cMb.setVisibility(8);
    this.cMa.setVisibility(8);
  }

  protected final void FR()
  {
    mn(2131166039);
    a(new d(this));
    this.cLT = ((LinearLayout)findViewById(2131362009));
    this.cMa = ((LinearLayout)findViewById(2131362016));
    this.cMb = ((LinearLayout)findViewById(2131362017));
    this.cMc = ((LinearLayout)findViewById(2131362018));
    this.cMd = ((ProgressBar)findViewById(2131362019));
    this.cLV = ((TextView)findViewById(2131362011));
    this.cLW = ((TextView)findViewById(2131362013));
    this.cLX = ((TextView)findViewById(2131362012));
    this.cLU = ((LinearLayout)findViewById(2131362010));
    this.cLY = ((ImageView)findViewById(2131362014));
    this.cLZ = ((Button)findViewById(2131362015));
    this.cLZ.setVisibility(8);
    this.cMc.setVisibility(0);
    this.cMd.setVisibility(0);
    this.cLT.setVisibility(8);
    this.cMb.setVisibility(8);
    this.cMa.setVisibility(8);
  }

  public final void HT()
  {
    finish();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (cl.a(new e(this), this, paramInt1, paramInt2, new Intent().setClass(this, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864)) != null);
    do
    {
      return;
      if (paramx.getType() == 325)
      {
        aa.d(TAG, "MMFunc_BakChatRecoverGetList resp");
        if ((paramInt1 != 0) || (paramInt2 != 0))
        {
          com.tencent.mm.ui.base.x localx2 = com.tencent.mm.ui.base.h.a(this, getString(2131166040), getResources().getDrawable(2130837937), new g(this));
          localx2.setCanceledOnTouchOutside(false);
          localx2.setCancelable(false);
          localx2.mQ(16);
          localx2.aGG();
          return;
        }
        com.tencent.mm.plugin.backup.b.e locale = (com.tencent.mm.plugin.backup.b.e)paramx;
        if ((!locale.HM()) || (locale.HN().size() <= 0))
        {
          HR();
          return;
        }
        HS();
        ad localad = (ad)locale.HN().get(0);
        aa.d(TAG, localad.toString());
        this.cMe = localad.fAj;
        this.cLX.setText(getString(2131166037) + "\"" + localad.fAk + "\"");
        if (System.currentTimeMillis() / 1000L - localad.fzy > 604800L)
        {
          this.cLW.setVisibility(8);
          this.cLZ.setVisibility(8);
          this.cLV.setText(getString(2131166041));
          this.cLY.setVisibility(0);
          return;
        }
        this.cLU.setOnClickListener(new h(this, localad));
        this.cMf = true;
        if (BakChatUI.cMY == localad.fAj)
          this.cLZ.setVisibility(0);
        while (true)
        {
          this.cLZ.setOnClickListener(new k(this));
          CharSequence localCharSequence = com.tencent.mm.pluginsdk.e.e.b(this, 1000L * localad.fzy, true);
          this.cLV.setText(String.valueOf(localCharSequence));
          this.cLW.setText(au.K(localad.fAo));
          return;
          BakChatUI.cMY = 0;
          this.cLZ.setVisibility(8);
        }
      }
    }
    while (paramx.getType() != 328);
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      aa.d(TAG, "delete failed");
      com.tencent.mm.ui.base.x localx1 = com.tencent.mm.ui.base.h.a(this, getString(2131166040), getResources().getDrawable(2130837937), new m(this));
      localx1.setCanceledOnTouchOutside(false);
      localx1.mQ(16);
      localx1.aGG();
      return;
    }
    aa.d(TAG, "delete success");
    BakChatUI.cMY = 0;
    HR();
  }

  protected final int getLayoutId()
  {
    return 2130903100;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 3) && (this.cMf) && (BakChatUI.cMY != 0))
    {
      this.cLZ.setVisibility(0);
      return;
    }
    this.cLZ.setVisibility(8);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d(TAG, "onCreate");
    FR();
    be.uA().a(328, this);
    be.uA().a(325, this);
    com.tencent.mm.plugin.backup.b.e locale = new com.tencent.mm.plugin.backup.b.e(f.h(au.FE().getBytes()));
    be.uA().d(locale);
  }

  public void onDestroy()
  {
    aa.d(TAG, "onDestroy");
    be.uA().b(328, this);
    be.uA().b(325, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakChatRecoverCheckUI
 * JD-Core Version:    0.6.2
 */