package com.tencent.mm.ui.tools.jsapi;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.widget.c;

public class ShareToQQWeiboUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private EditText dQC;
  private TextView hdw;

  protected final void FR()
  {
    mn(n.bzZ);
    this.dQC = ((EditText)findViewById(i.content));
    this.hdw = ((TextView)findViewById(i.aRF));
    String str1 = getIntent().getStringExtra("content");
    String str2 = getIntent().getStringExtra("shortUrl");
    this.dQC.addTextChangedListener(new c(this.dQC, this.hdw, 280));
    if (str1.contains(str2))
      this.dQC.setText(str1.trim());
    while (true)
    {
      a(new aq(this));
      a(0, getString(n.ben), new ar(this));
      return;
      this.dQC.setText(str1 + " " + str2);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.ShareToQQWeiboUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (paramx.getType() != 26)
      return;
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      SM();
      setResult(-1);
      finish();
      return;
    }
    setResult(1, new Intent().putExtra("err_code", paramInt2));
    int i = n.bzY;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(i, arrayOfObject), 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aTx;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(26, this);
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(26, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ShareToQQWeiboUI
 * JD-Core Version:    0.6.2
 */