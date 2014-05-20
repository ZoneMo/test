package com.google.android.gms.internal;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.HashMap;

public final class l
  implements SafeParcelable
{
  public static final cr Qd = new cr();
  private static final HashMap Qe = null;
  private static final Object Qf = new Object();
  private static final cq Qm = new cp(new String[0]);
  int KH;
  String[] Qg;
  Bundle Qh;
  CursorWindow[] Qi;
  Bundle Qj;
  int[] Qk;
  int Ql;
  boolean mClosed = false;
  int p;

  private void h(String paramString, int paramInt)
  {
    if ((this.Qh == null) || (!this.Qh.containsKey(paramString)))
      throw new IllegalArgumentException("No such column: " + paramString);
    if (isClosed())
      throw new IllegalArgumentException("Buffer is closed.");
    if ((paramInt < 0) || (paramInt >= this.Ql))
      throw new CursorIndexOutOfBoundsException(paramInt, this.Ql);
  }

  private boolean isClosed()
  {
    try
    {
      boolean bool = this.mClosed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long a(String paramString, int paramInt1, int paramInt2)
  {
    h(paramString, paramInt1);
    return this.Qi[paramInt2].getLong(paramInt1 - this.Qk[paramInt2], this.Qh.getInt(paramString));
  }

  public final int aW(int paramInt)
  {
    int i = 0;
    boolean bool;
    if ((paramInt >= 0) && (paramInt < this.Ql))
    {
      bool = true;
      i.F(bool);
    }
    while (true)
    {
      if (i < this.Qk.length)
      {
        if (paramInt < this.Qk[i])
          i--;
      }
      else
      {
        if (i == this.Qk.length)
          i--;
        return i;
        bool = false;
        break;
      }
      i++;
    }
  }

  public final int b(String paramString, int paramInt1, int paramInt2)
  {
    h(paramString, paramInt1);
    return this.Qi[paramInt2].getInt(paramInt1 - this.Qk[paramInt2], this.Qh.getInt(paramString));
  }

  public final String c(String paramString, int paramInt1, int paramInt2)
  {
    h(paramString, paramInt1);
    return this.Qi[paramInt2].getString(paramInt1 - this.Qk[paramInt2], this.Qh.getInt(paramString));
  }

  public final boolean d(String paramString, int paramInt1, int paramInt2)
  {
    h(paramString, paramInt1);
    return Long.valueOf(this.Qi[paramInt2].getLong(paramInt1 - this.Qk[paramInt2], this.Qh.getInt(paramString))).longValue() == 1L;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Uri e(String paramString, int paramInt1, int paramInt2)
  {
    String str = c(paramString, paramInt1, paramInt2);
    if (str == null)
      return null;
    return Uri.parse(str);
  }

  public final boolean f(String paramString, int paramInt1, int paramInt2)
  {
    h(paramString, paramInt1);
    return this.Qi[paramInt2].isNull(paramInt1 - this.Qk[paramInt2], this.Qh.getInt(paramString));
  }

  public final int getCount()
  {
    return this.Ql;
  }

  public final void kY()
  {
    int i = 0;
    this.Qh = new Bundle();
    for (int j = 0; j < this.Qg.length; j++)
      this.Qh.putInt(this.Qg[j], j);
    this.Qk = new int[this.Qi.length];
    int k = 0;
    while (i < this.Qi.length)
    {
      this.Qk[i] = k;
      k += this.Qi[i].getNumRows();
      i++;
    }
    this.Ql = k;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cr.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.l
 * JD-Core Version:    0.6.2
 */