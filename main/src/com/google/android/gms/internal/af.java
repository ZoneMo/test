package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.Button;
import com.google.android.gms.b;
import com.google.android.gms.c;
import com.google.android.gms.d;

public final class af extends Button
{
  public af(Context paramContext)
  {
    this(paramContext, null);
  }

  public af(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 16842824);
  }

  private static int f(int paramInt1, int paramInt2, int paramInt3)
  {
    switch (paramInt1)
    {
    default:
      throw new IllegalStateException("Unknown color scheme: " + paramInt1);
    case 1:
      paramInt2 = paramInt3;
    case 0:
    }
    return paramInt2;
  }

  public final void a(Resources paramResources, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramInt1 >= 0) && (paramInt1 < 3))
    {
      bool2 = bool1;
      label16: i.a(bool2, "Unknown button size " + paramInt1);
      if ((paramInt2 < 0) || (paramInt2 >= 2))
        break label174;
    }
    while (true)
    {
      i.a(bool1, "Unknown color scheme " + paramInt2);
      setTypeface(Typeface.DEFAULT_BOLD);
      setTextSize(14.0F);
      float f = paramResources.getDisplayMetrics().density;
      setMinHeight((int)(0.5F + f * 48.0F));
      setMinWidth((int)(0.5F + f * 48.0F));
      switch (paramInt1)
      {
      default:
        throw new IllegalStateException("Unknown button size: " + paramInt1);
        bool2 = false;
        break label16;
        label174: bool1 = false;
      case 0:
      case 1:
      case 2:
      }
    }
    for (int i = f(paramInt2, c.JT, c.JU); i == -1; i = f(paramInt2, c.JV, c.JW))
      throw new IllegalStateException("Could not find background resource!");
    setBackgroundDrawable(paramResources.getDrawable(i));
    setTextColor(paramResources.getColorStateList(f(paramInt2, b.JT, b.JU)));
    switch (paramInt1)
    {
    default:
      throw new IllegalStateException("Unknown button size: " + paramInt1);
    case 0:
      setText(paramResources.getString(d.JY));
      return;
    case 1:
      setText(paramResources.getString(d.JZ));
      return;
    case 2:
    }
    setText(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.af
 * JD-Core Version:    0.6.2
 */