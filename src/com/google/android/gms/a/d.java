package com.google.android.gms.a;

import android.content.Intent;

public class d extends a
{
  private final Intent iW;

  public d(String paramString, Intent paramIntent)
  {
    super(paramString);
    this.iW = paramIntent;
  }

  public final Intent getIntent()
  {
    return new Intent(this.iW);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.a.d
 * JD-Core Version:    0.6.2
 */