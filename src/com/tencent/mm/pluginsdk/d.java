package com.tencent.mm.pluginsdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import com.tencent.mm.n.n;
import com.tencent.mm.n.o;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;

@Deprecated
public abstract interface d
{
  public abstract Bitmap a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent);

  public abstract x a(n paramn);

  public abstract String a(String paramString1, String paramString2, boolean paramBoolean);

  public abstract void a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4);

  public abstract void a(WXMediaMessage paramWXMediaMessage, String paramString1, String paramString2);

  public abstract void a(String paramString1, String paramString2, String paramString3, long paramLong);

  public abstract String aE(String paramString);

  public abstract boolean aF(String paramString);

  public abstract boolean aG(String paramString);

  public abstract String b(Context paramContext, String paramString1, String paramString2);

  public abstract boolean b(Context paramContext, int paramInt1, int paramInt2);

  public abstract void bn(int paramInt);

  public abstract x d(int paramInt, boolean paramBoolean);

  public abstract boolean e(Activity paramActivity);

  public abstract String f(Context paramContext, String paramString);

  public abstract void f(Activity paramActivity);

  public abstract boolean g(Context paramContext, String paramString);

  public abstract void nE();

  public abstract o nF();

  public abstract void nG();

  public abstract void nH();

  public abstract void nI();

  public abstract void nJ();

  public abstract Intent nK();

  public abstract String t(Context paramContext);

  public abstract void u(Context paramContext);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.d
 * JD-Core Version:    0.6.2
 */