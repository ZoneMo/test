package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class SendFeedBackUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private EditText dQC;

  protected final void FR()
  {
    mn(2131165849);
    this.dQC = ((EditText)findViewById(2131361916));
    a(new w(this));
    a(0, getString(2131167677), new x(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      h.a(this, getString(2131165850), getString(2131167675), new z(this));
      return;
    }
    h.a(this, getString(2131165851), getString(2131167675), new aa(this));
  }

  protected final int getLayoutId()
  {
    return 2130903254;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(153, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SendFeedBackUI
 * JD-Core Version:    0.6.2
 */