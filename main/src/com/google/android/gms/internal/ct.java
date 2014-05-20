package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Arrays;

public final class ct
{
  public final Uri uri;

  public ct(Uri paramUri)
  {
    this.uri = paramUri;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ct));
    do
    {
      return false;
      if (this == paramObject)
        return true;
    }
    while (((ct)paramObject).hashCode() != hashCode());
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.uri;
    return Arrays.hashCode(arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ct
 * JD-Core Version:    0.6.2
 */