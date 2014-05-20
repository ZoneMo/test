package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class MMTextInputUI extends MMActivity
{
  private int cSa;
  private EditText gFV;
  private TextView hlu;
  private int hlv;
  private boolean hlw;
  private int yx;

  private void goBack()
  {
    if (getIntent().getBooleanExtra("key_show_confirm", false))
    {
      h.a(aal(), getString(n.bum), "", new do(this), null);
      return;
    }
    SM();
    setResult(0);
    finish();
  }

  protected int getLayoutId()
  {
    return k.aVc;
  }

  protected void m(CharSequence paramCharSequence)
  {
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gFV = ((EditText)findViewById(i.aMK));
    this.hlu = ((TextView)findViewById(i.aMo));
    this.gFV.setHint(cj.R(getIntent().getStringExtra("key_hint"), ""));
    this.gFV.append(cj.R(getIntent().getStringExtra("key_value"), ""));
    this.yx = (getIntent().getIntExtra("key_max_count", -1) << 1);
    this.cSa = 0;
    this.hlv = Math.max(-120 + this.yx, 9 * this.yx / 10);
    this.hlw = getIntent().getBooleanExtra("key_nullable", false);
    a(new dp(this));
    a(0, getString(n.bdY), new dq(this));
    dg(this.hlw);
    if ((!this.hlw) || (this.yx > 0))
      this.gFV.addTextChangedListener(new dr(this));
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
    {
      aa.i("MicroMsg.MMTextInputUI", "on back key down");
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.MMTextInputUI
 * JD-Core Version:    0.6.2
 */