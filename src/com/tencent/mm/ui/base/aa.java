package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.graphics.drawable.Drawable;
import android.view.View;

public final class aa
{
  private a gyN;
  private Context mContext;

  public aa(Context paramContext)
  {
    this.mContext = paramContext;
    this.gyN = new a();
    this.gyN.gyc = -1;
  }

  public final aa a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = this.mContext.getString(paramInt);
    this.gyN.gxV = str;
    this.gyN.gxX = paramOnClickListener;
    this.gyN.gye = false;
    return this;
  }

  public final aa a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.gyN.gxZ = paramOnCancelListener;
    return this;
  }

  public final aa a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    this.gyN.gya = paramOnDismissListener;
    return this;
  }

  public final aa a(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.gyN.gxV = paramString;
    this.gyN.gxX = paramOnClickListener;
    return this;
  }

  public final x aGI()
  {
    Context localContext = this.mContext;
    x localx = new x(localContext);
    localx.a(this.gyN);
    return localx;
  }

  public final aa ai(View paramView)
  {
    this.gyN.fox = paramView;
    return this;
  }

  public final aa b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(this.mContext.getString(paramInt), paramOnClickListener);
  }

  public final aa b(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.gyN.gxW = paramString;
    this.gyN.gxY = paramOnClickListener;
    return this;
  }

  public final aa c(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return b(this.mContext.getString(paramInt), paramOnClickListener);
  }

  public final aa dp(boolean paramBoolean)
  {
    this.gyN.fcB = paramBoolean;
    return this;
  }

  public final aa f(Drawable paramDrawable)
  {
    this.gyN.gxS = paramDrawable;
    return this;
  }

  public final aa mR(int paramInt)
  {
    this.gyN.title = this.mContext.getString(paramInt);
    return this;
  }

  public final aa mS(int paramInt)
  {
    this.gyN.gxT = this.mContext.getString(paramInt);
    return this;
  }

  public final aa wf(String paramString)
  {
    this.gyN.title = paramString;
    return this;
  }

  public final aa wg(String paramString)
  {
    this.gyN.gxT = paramString;
    return this;
  }

  public final aa wh(String paramString)
  {
    this.gyN.gxU = paramString;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.aa
 * JD-Core Version:    0.6.2
 */