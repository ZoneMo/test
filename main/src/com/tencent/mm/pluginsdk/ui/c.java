package com.tencent.mm.pluginsdk.ui;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public final class c
{
  private static ae dVT;

  public static void a(ImageView paramImageView, String paramString)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof a)));
    for (a locala = (a)localDrawable; ; locala = new a(paramString, '\000'))
    {
      locala.qE(paramString);
      paramImageView.setImageDrawable(locala);
      paramImageView.invalidate();
      return;
    }
  }

  public static void a(ae paramae)
  {
    dVT = paramae;
  }

  public static void a(b paramb, String paramString)
  {
    Drawable localDrawable = paramb.getDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof a)));
    for (a locala = (a)localDrawable; ; locala = new a(paramString, '\000'))
    {
      locala.qE(paramString);
      paramb.setImageDrawable(locala);
      paramb.doInvalidate();
      return;
    }
  }

  public static ae aqP()
  {
    return dVT;
  }

  public static void d(ImageView paramImageView, String paramString)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    a locala;
    if ((localDrawable != null) && ((localDrawable instanceof a)))
      locala = (a)localDrawable;
    while (true)
    {
      locala.qE(paramString);
      paramImageView.setImageDrawable(locala);
      paramImageView.invalidate();
      return;
      locala = new a(paramString, '\000');
      locala.arq();
    }
  }

  public static void e(ImageView paramImageView, String paramString)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof d)));
    for (d locald = (d)localDrawable; ; locald = new d(paramString))
    {
      locald.qE(paramString);
      paramImageView.setImageDrawable(locald);
      paramImageView.invalidate();
      return;
    }
  }

  public static void f(ImageView paramImageView, String paramString)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof a)));
    for (a locala = (a)localDrawable; ; locala = new a(paramString, (short)0))
    {
      locala.qE(paramString);
      paramImageView.setImageDrawable(locala);
      paramImageView.invalidate();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.c
 * JD-Core Version:    0.6.2
 */