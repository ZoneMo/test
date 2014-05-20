package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;

public final class j
{
  private static final Uri LA = new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("drawable").build();

  public static Uri T(String paramString)
  {
    i.c(paramString, "Resource name must not be null.");
    return LA.buildUpon().appendPath(paramString).build();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.j
 * JD-Core Version:    0.6.2
 */