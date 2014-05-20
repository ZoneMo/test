package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.ui.tools.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bt;

public class SayHiEditUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private EditText gUC;

  protected final void FR()
  {
    this.gUC = ((EditText)findViewById(2131363565));
    this.gUC.setFilters(p.fux);
    String str = getIntent().getStringExtra("Contact_User");
    int i = getIntent().getIntExtra("Contact_Scene", 18);
    a(getString(2131167677), new cy(this, str, i), bt.gnO);
    a(new da(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i = 1;
    aa.i("MicroMsg.SayHiEditUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    try
    {
      if (this.cIr == null)
        break label153;
      this.cIr.dismiss();
      this.cIr = null;
      break label153;
      Toast.makeText(this, 2131168147, 0).show();
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SayHiEditUI", "exception in onSceneEnd : " + localException.getMessage());
      return;
    }
    Toast.makeText(this, 2131168148, 0).show();
    label153: 
    while (i == 0)
    {
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        h.an(this, getString(2131167834));
        finish();
        return;
      }
      Toast.makeText(this, 2131168149, 0).show();
      return;
      switch (paramInt2)
      {
      case -22:
      case -34:
      case -24:
      }
      i = 0;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903640;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(30, this);
    mn(2131168145);
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(30, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.SayHiEditUI
 * JD-Core Version:    0.6.2
 */