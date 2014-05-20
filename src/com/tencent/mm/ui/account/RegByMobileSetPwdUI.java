package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

public class RegByMobileSetPwdUI extends SetPwdUI
{
  private String frK = null;
  private TextView gsX;

  protected final void FR()
  {
    mn(n.bvH);
    this.gsX = ((TextView)findViewById(i.aHf));
    if ((this.frK != null) && (this.frK.length() > 0))
      this.gsX.setText(this.frK);
  }

  protected final void a(ky paramky)
  {
    switch (hy.gst[paramky.ordinal()])
    {
    default:
      return;
    case 1:
      h.c(this, n.bvE, n.bvG);
      return;
    case 2:
      h.c(this, n.bvF, n.bvG);
      return;
    case 3:
      h.c(this, n.bEe, n.bdI);
      return;
    case 4:
    }
    h.c(this, n.bEg, n.bdI);
  }

  protected final String aFW()
  {
    return ((EditText)findViewById(i.aHj)).getText().toString();
  }

  protected final String aFX()
  {
    return ((EditText)findViewById(i.aHi)).getText().toString();
  }

  protected final boolean bf(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      finish();
      return true;
    }
    return as(paramInt1, paramInt2);
  }

  protected final int getLayoutId()
  {
    return k.aYF;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.frK = getIntent().getStringExtra("kintent_hint");
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileSetPwdUI
 * JD-Core Version:    0.6.2
 */