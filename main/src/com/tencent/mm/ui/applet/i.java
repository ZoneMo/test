package com.tencent.mm.ui.applet;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.view.View;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.aa;
import com.tencent.mm.ui.base.x;

public final class i
{
  public static SecurityImage a(Context paramContext, int paramInt, boolean paramBoolean, byte[] paramArrayOfByte, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener, DialogInterface.OnCancelListener paramOnCancelListener, DialogInterface.OnDismissListener paramOnDismissListener, n paramn)
  {
    SecurityImage localSecurityImage = (SecurityImage)View.inflate(paramContext, k.aZh, null);
    localSecurityImage.a(paramn);
    localSecurityImage.a(paramBoolean, paramArrayOfByte, paramString1, paramString2);
    aa localaa = new aa(paramContext);
    localaa.mR(paramInt);
    localaa.b(com.tencent.mm.n.bdv, new j(localSecurityImage, paramOnClickListener));
    localaa.a(paramOnCancelListener);
    localaa.ai(localSecurityImage);
    localaa.dp(true);
    SecurityImage.a(localSecurityImage, localaa.aGI());
    SecurityImage.c(localSecurityImage).setOnDismissListener(paramOnDismissListener);
    SecurityImage.c(localSecurityImage).show();
    return localSecurityImage;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.i
 * JD-Core Version:    0.6.2
 */