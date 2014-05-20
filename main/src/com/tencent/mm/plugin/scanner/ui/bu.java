package com.tencent.mm.plugin.scanner.ui;

import android.content.Intent;
import com.tencent.mm.ak.a;
import com.tencent.mm.ui.base.v;

final class bu
  implements v
{
  bu(VcardContactUI paramVcardContactUI, String paramString)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      Intent localIntent2 = new Intent();
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = (this.efz + " " + this.efz);
      localIntent2.putExtra("composeType", 4);
      localIntent2.putExtra("toList", arrayOfString2);
      a.b(this.efy, "qqmail", ".ui.ComposeUI", localIntent2);
      return;
    case 1:
    }
    Intent localIntent1 = new Intent("android.intent.action.SEND");
    localIntent1.setType("text/plain");
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = this.efz;
    localIntent1.putExtra("android.intent.extra.EMAIL", arrayOfString1);
    this.efy.startActivity(localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bu
 * JD-Core Version:    0.6.2
 */