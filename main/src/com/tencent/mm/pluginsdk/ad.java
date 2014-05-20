package com.tencent.mm.pluginsdk;

import android.content.Context;
import android.text.SpannableString;
import android.widget.TextView;

public abstract interface ad
{
  public abstract SpannableString a(TextView paramTextView, String paramString);

  public abstract boolean a(Context paramContext, String paramString, boolean paramBoolean);

  public abstract void aew();

  public abstract void b(Context paramContext, String paramString, boolean paramBoolean);

  public abstract SpannableString d(TextView paramTextView);

  public abstract void e(TextView paramTextView);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ad
 * JD-Core Version:    0.6.2
 */