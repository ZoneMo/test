package com.tencent.mm.ui.bindqq;

import android.app.Activity;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.o.a;
import com.tencent.mm.ui.base.h;

final class ae
  implements MenuItem.OnMenuItemClickListener
{
  ae(VerifyQQUI paramVerifyQQUI, EditText paramEditText1, EditText paramEditText2)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = this.gJN.getText().toString().trim();
    VerifyQQUI.a(this.gJM, this.gJO.getText().toString().trim());
    try
    {
      VerifyQQUI.a(this.gJM, Long.parseLong(str));
      if (VerifyQQUI.b(this.gJM) < 10000L)
      {
        h.c(this.gJM.aal(), n.bfT, n.bfR);
        return true;
      }
    }
    catch (Exception localException)
    {
      h.c(this.gJM.aal(), n.bfT, n.bfR);
      return true;
    }
    if (VerifyQQUI.c(this.gJM).equals(""))
    {
      h.c(this.gJM.aal(), n.bfS, n.bfR);
      return true;
    }
    this.gJM.SM();
    a locala = new a(VerifyQQUI.b(this.gJM), VerifyQQUI.c(this.gJM), "", "", "", VerifyQQUI.d(this.gJM), VerifyQQUI.e(this.gJM));
    be.uA().d(locala);
    VerifyQQUI localVerifyQQUI = this.gJM;
    Activity localActivity = this.gJM.aal();
    this.gJM.getString(n.bfV);
    VerifyQQUI.a(localVerifyQQUI, h.a(localActivity, this.gJM.getString(n.bfN), true, new af(this, locala)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.ae
 * JD-Core Version:    0.6.2
 */