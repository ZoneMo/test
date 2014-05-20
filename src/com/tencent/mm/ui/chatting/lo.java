package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.e.a;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.v;

final class lo
  implements v
{
  lo(lm paramlm, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
  }

  public final void bo(int paramInt)
  {
    String str1 = this.gRw.replace(" ", "").replace("(", "").replace(")", "").replace("-", "");
    switch (paramInt)
    {
    default:
      if (this.gRx != null)
        this.gRx.onDismiss(null);
      break;
    case 0:
    case 1:
    case 2:
    }
    do
    {
      do
      {
        do
        {
          return;
          Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str1));
          lm.a(this.gRv).startActivity(localIntent);
          m.dZN.j(10112, "1");
        }
        while (this.gRx == null);
        this.gRx.onDismiss(null);
        return;
        if (lm.d(this.gRv))
          break;
        a.a(lm.a(this.gRv), str1, str1);
      }
      while (this.gRx == null);
      this.gRx.onDismiss(null);
      return;
      String[] arrayOfString;
      if ((lm.e(this.gRv)) && (lm.f(this.gRv)))
        arrayOfString = lm.a(this.gRv).getResources().getStringArray(2131296300);
      while (true)
      {
        String str2 = lm.a(this.gRv).getResources().getString(2131165779);
        h.b(lm.a(this.gRv), this.gRw + str2, arrayOfString, "", new lp(this, str1));
        return;
        if (lm.e(this.gRv))
        {
          arrayOfString = new String[1];
          arrayOfString[0] = lm.a(this.gRv).getResources().getString(2131165782);
        }
        else
        {
          arrayOfString = new String[1];
          arrayOfString[0] = lm.a(this.gRv).getResources().getString(2131165783);
        }
      }
      a.a(lm.a(this.gRv), str1, str1);
      m.dZN.j(10115, "1");
    }
    while (this.gRx == null);
    this.gRx.onDismiss(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lo
 * JD-Core Version:    0.6.2
 */