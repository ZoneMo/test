package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public class RegByMobileVoiceVerifyUI extends MMActivity
  implements m
{
  private String bTR;
  private TextView cQf;
  private String eaA;
  private String gqw;
  private String gsZ;
  private ag gtb;
  private ai gtc;
  private int gtd = 0;

  protected final void FR()
  {
    mn(n.bfH);
    a(new ia(this));
    this.cQf = ((TextView)findViewById(i.axL));
    Button localButton = (Button)findViewById(i.anO);
    this.gqw = RegByMobileVoiceVerifySelectUI.vZ(this.bTR);
    this.cQf.setText(this.gqw);
    this.gsZ = com.tencent.mm.x.b.ga(this.bTR);
    findViewById(i.ayb).setOnClickListener(new ib(this));
    localButton.setOnClickListener(new ic(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RegByMobileVoiceVerifyUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
  }

  protected final int getLayoutId()
  {
    return k.aSI;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 != 10000) || (paramIntent == null))
      return;
    this.gqw = paramIntent.getStringExtra("voice_verify_language");
    this.gsZ = paramIntent.getStringExtra("voice_verify_code");
    this.cQf.setText(this.gqw);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bTR = getIntent().getExtras().getString("bindmcontact_mobile");
    this.gtd = getIntent().getExtras().getInt("voice_verify_type");
    if ((this.gtd == 0) || (this.gtd == 2) || (this.gtd == 3))
      be.uA().a(145, this);
    while (true)
    {
      this.eaA = com.tencent.mm.plugin.a.b.FL();
      FR();
      return;
      if ((this.gtd == 4) || (this.gtd == 1))
        be.uA().a(132, this);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    be.uA().b(132, this);
    be.uA().b(145, this);
    if ((this.gtd == 0) || (this.gtd == 2) || (this.gtd == 3))
      com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",R200_500," + be.ds("R200_500") + ",2");
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      com.tencent.mm.plugin.a.b.ie(this.eaA);
      SM();
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    if ((this.gtd == 0) || (this.gtd == 2) || (this.gtd == 3))
    {
      com.tencent.mm.plugin.a.b.id("R200_500");
      com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R200_500," + be.ds("R200_500") + ",1");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileVoiceVerifyUI
 * JD-Core Version:    0.6.2
 */