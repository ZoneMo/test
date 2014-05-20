package com.tencent.mm.plugin.backup.ui;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

public final class a
{
  public static x a(Context paramContext, int paramInt, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    x localx = h.a(paramContext, paramInt, 0, 2131167701, 2131167702, paramOnClickListener1, paramOnClickListener2);
    localx.setCanceledOnTouchOutside(false);
    localx.mQ(16);
    localx.aGG();
    localx.setCancelable(false);
    return localx;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.a
 * JD-Core Version:    0.6.2
 */