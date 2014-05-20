package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class AccountDeletedAlphaAlertUI extends MMActivity
{
  private static AccountDeletedAlphaAlertUI hgw = null;

  public static AccountDeletedAlphaAlertUI aMG()
  {
    return hgw;
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    hgw = this;
    d.reset();
    be.uH();
    com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(getIntent().getStringExtra("errmsg"));
    if (locala != null)
    {
      locala.a(this, new a(this), null);
      return;
    }
    h.a(this, getString(2131165598), null, false, new b(this));
  }

  public void onDestroy()
  {
    if (equals(hgw))
      hgw = null;
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.AccountDeletedAlphaAlertUI
 * JD-Core Version:    0.6.2
 */