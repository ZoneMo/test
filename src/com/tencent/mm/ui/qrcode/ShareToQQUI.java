package com.tencent.mm.ui.qrcode;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.fm;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.widget.c;

public class ShareToQQUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private ProgressDialog cIr = null;
  private EditText dQC;
  private TextView hdw;
  private int hdx;
  private boolean hdy = false;

  protected final void FR()
  {
    mn(2131168378);
    this.dQC = ((EditText)findViewById(2131361916));
    this.hdw = ((TextView)findViewById(2131362435));
    this.dQC.addTextChangedListener(new c(this.dQC, this.hdw, 280));
    this.hdx = getIntent().getIntExtra("show_to", 2);
    if (this.hdx == 4)
      this.dQC.setText(2131168431);
    while (true)
    {
      a(new i(this));
      a(0, getString(2131167782), new j(this));
      return;
      this.dQC.setText(2131168403);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.ShareToQQUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (paramx.getType() != 26);
    do
    {
      return;
      if (this.cIr != null)
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
      if ((paramInt1 == 4) && (paramInt2 == -68))
      {
        if (au.hX(paramString))
          paramString = "error";
        h.a(this, paramString, getString(2131167675), new m(this), null);
        return;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        SM();
        String str = getString(2131166661);
        new n(this);
        h.an(this, str);
        return;
      }
      this.hdy = false;
    }
    while (cx.a(aal(), paramInt1, paramInt2, 4));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(2131166660, arrayOfObject), 0).show();
  }

  protected final int getLayoutId()
  {
    return 2130903253;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(26, this);
    FR();
    if (v.tE())
    {
      com.tencent.mm.ui.a.a.e locale = new com.tencent.mm.ui.a.a.e("290293790992170");
      locale.xh(au.hW((String)be.uz().sr().get(65830)));
      new fm(locale, new o(this)).aFV();
    }
  }

  public void onDestroy()
  {
    be.uA().b(26, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.ShareToQQUI
 * JD-Core Version:    0.6.2
 */