package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.cx;

public class SettingsModifyPasswordUI extends MMActivity
  implements m
{
  private ProgressDialog cIr;
  private EditText hfC;
  private EditText hfD;
  private String hfE;
  private String hfF;

  protected final void FR()
  {
    mn(2131166090);
    this.hfC = ((EditText)findViewById(2131363667));
    this.hfD = ((EditText)findViewById(2131363668));
    a(0, getString(2131167694), new dd(this));
    a(new df(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MiroMsg.SettingsModifyPasswordUI", "onSceneEnd " + paramInt1 + " errCode " + paramInt2 + " errMsg " + paramString + "  " + paramx.getType());
    if (paramx.getType() == 383)
    {
      if (this.cIr != null)
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        be.uz().sr().set(3, au.hZ(this.hfF));
        be.uz().sr().set(19, au.ia(this.hfF));
        h.a(this, 2131166093, 2131167675, new dg(this));
      }
    }
    while (true)
    {
      return;
      if (cx.a(aal(), paramInt1, paramInt2, 4));
      for (int i = 1; i != 0; i = 0)
        return;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903690;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uA().a(383, this);
  }

  public void onDestroy()
  {
    be.uA().b(383, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsModifyPasswordUI
 * JD-Core Version:    0.6.2
 */