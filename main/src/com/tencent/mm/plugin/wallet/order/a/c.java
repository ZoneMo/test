package com.tencent.mm.plugin.wallet.order.a;

import android.content.Context;
import android.os.Build.VERSION;

public final class c
{
  public static void aa(Context paramContext, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      new a();
      ((android.content.ClipboardManager)paramContext.getSystemService("clipboard")).setText(paramString);
      return;
    }
    new b();
    ((android.text.ClipboardManager)paramContext.getSystemService("clipboard")).setText(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.order.a.c
 * JD-Core Version:    0.6.2
 */