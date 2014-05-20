package com.tencent.mm.pluginsdk.model;

import android.content.Context;

public final class c
{
  public static void a(Context paramContext, String[] paramArrayOfString, e parame)
  {
    if ((parame == null) || (paramArrayOfString == null) || (paramArrayOfString.length == 0))
      throw new IllegalArgumentException();
    new d(paramContext, paramArrayOfString, parame).execute(new Void[0]);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.c
 * JD-Core Version:    0.6.2
 */