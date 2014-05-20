package com.tencent.mm.platformtools;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class o extends i
{
  private final String bRt;
  public final boolean cGu;
  private SparseBooleanArray cGv = new SparseBooleanArray();

  public o(String paramString)
  {
    aa.e("MicroMsg.GeneralDBHelper", "create db %s", new Object[] { paramString });
    this.cGu = false;
    this.bRt = paramString;
  }

  @Deprecated
  public final void aI(String paramString)
  {
    aa.e("MicroMsg.GeneralDBHelper", "forbid to use this method");
    if (this.cGv.size() <= 1)
      super.aI(paramString);
  }

  final void eM(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.GeneralDBHelper", "addRef %d", arrayOfObject);
    this.cGv.put(paramInt, true);
  }

  public final void eN(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.GeneralDBHelper", "try close db %d", arrayOfObject1);
    this.cGv.delete(paramInt);
    if (this.cGv.size() <= 0)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.e("MicroMsg.GeneralDBHelper", "close db %d succ", arrayOfObject2);
      super.sh();
      n.Fp().remove(this.bRt.hashCode());
    }
  }

  @Deprecated
  public final void sh()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = cj.azV();
    aa.b("MicroMsg.GeneralDBHelper", "forbid to use this method %s", arrayOfObject);
    if (this.cGv.size() <= 1)
      super.sh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.o
 * JD-Core Version:    0.6.2
 */