package com.tencent.mm.pluginsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.storage.ac;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.y;
import java.util.ArrayList;
import java.util.List;

public abstract interface i
{
  public abstract boolean KR();

  public abstract boolean KS();

  public abstract void KW();

  public abstract ArrayList KX();

  public abstract int KY();

  public abstract List KZ();

  public abstract void La();

  public abstract ac W(String paramString1, String paramString2);

  public abstract Bitmap a(Context paramContext, int paramInt, y paramy);

  public abstract Bitmap a(View paramView, String paramString1, int paramInt1, String paramString2, int paramInt2);

  public abstract y a(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3, String paramString4, String paramString5);

  public abstract void a(j paramj);

  public abstract void a(al paramal);

  public abstract void a(y paramy, Context paramContext);

  public abstract void a(String paramString, y paramy, ak paramak);

  public abstract boolean a(Context paramContext, ak paramak);

  public abstract boolean a(y paramy);

  public abstract void al(boolean paramBoolean);

  public abstract String b(Context paramContext, WXMediaMessage paramWXMediaMessage, String paramString);

  public abstract void b(Context paramContext, ak paramak);

  public abstract void b(j paramj);

  public abstract void b(al paramal);

  public abstract void b(y paramy);

  public abstract y c(y paramy);

  public abstract void c(al paramal);

  public abstract Bitmap d(y paramy);

  public abstract void d(al paramal);

  public abstract Bitmap e(String paramString1, int paramInt, String paramString2);

  public abstract boolean extractForeground(int[] paramArrayOfInt, int paramInt1, int paramInt2);

  public abstract boolean f(Context paramContext, String paramString1, String paramString2);

  public abstract List fD(int paramInt);

  public abstract boolean g(String paramString1, String paramString2, int paramInt);

  public abstract String iY(String paramString);

  public abstract String iZ(String paramString);

  public abstract y ja(String paramString);

  public abstract void jb(String paramString);

  public abstract boolean jc(String paramString);

  public abstract int jd(String paramString);

  public abstract List je(String paramString);

  public abstract void jf(String paramString);

  public abstract void jg(String paramString);

  public abstract String jh(String paramString);

  public abstract String ji(String paramString);

  public abstract boolean jj(String paramString);

  public abstract boolean n(ak paramak);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.i
 * JD-Core Version:    0.6.2
 */