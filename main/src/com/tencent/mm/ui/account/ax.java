package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.protocal.a;
import com.tencent.mm.ui.account.mobile.MobileInputUI;
import com.tencent.mm.ui.base.cd;

final class ax
  implements cd
{
  ax(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    case 3:
    case 5:
    case 6:
    case 7:
    default:
      return;
    case 1:
      b.ie("F100_100_QQ");
      b.b(true, be.uv() + "," + this.cGV.getClass().getName() + ",F100_100_QQ," + be.ds("F100_100_QQ") + ",1");
      av.am(this.cGV, this.cGV.getString(n.bDH));
      return;
    case 4:
      b.ie("F100_100_phone");
      b.b(true, be.uv() + "," + this.cGV.getClass().getName() + ",F100_100_phone," + be.ds("F100_100_phone") + ",1");
      if (a.fxu)
      {
        Toast.makeText(this.cGV, this.cGV.getString(n.bdn), 0).show();
        return;
      }
      Intent localIntent = new Intent(this.cGV, MobileInputUI.class);
      if (this.gqe != null)
      {
        int i = this.gqe.indexOf("+");
        String str = this.gqe;
        if ((i != -1) && (this.gqe.length() > 0))
          str = this.gqe.substring(i + 1);
        localIntent.putExtra("couttry_code", str);
      }
      if (this.gqf != null)
        localIntent.putExtra("country_name", this.gqf);
      if (this.gqg != null)
        localIntent.putExtra("bindmcontact_shortmobile", this.gqg);
      localIntent.putExtra("mobile_input_purpose", 1);
      this.cGV.startActivity(localIntent);
      return;
    case 2:
      b.ie("F100_100_Email");
      b.b(true, be.uv() + "," + this.cGV.getClass().getName() + ",F100_100_Email," + be.ds("F100_100_Email") + ",1");
      av.am(this.cGV, this.cGV.getString(n.bDG));
      return;
    case 8:
    }
    av.am(this.cGV, this.cGV.getString(n.bHJ));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ax
 * JD-Core Version:    0.6.2
 */