package com.tencent.mm.pluginsdk;

import android.database.Cursor;
import android.graphics.Bitmap;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.o;
import java.util.LinkedList;

public abstract interface ah
{
  public abstract void P(LinkedList paramLinkedList);

  public abstract void X(String paramString, int paramInt);

  public abstract Bitmap a(String paramString, int paramInt, float paramFloat);

  public abstract o apw();

  public abstract Cursor c(int[] paramArrayOfInt);

  public abstract void f(k paramk);

  public abstract void g(k paramk);

  public abstract void h(k paramk);

  public abstract Cursor jX(int paramInt);

  public abstract k qf(String paramString);

  public abstract void qg(String paramString);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ah
 * JD-Core Version:    0.6.2
 */