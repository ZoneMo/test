package com.tencent.mm.ui;

import android.content.Context;
import android.database.Cursor;
import android.widget.BaseAdapter;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

public abstract class bc extends BaseAdapter
  implements al, ar
{
  protected Context context;
  private int count;
  protected Object gmL;
  private Cursor gmM = null;
  private Map gmN = null;
  protected bd gmO;

  public bc(Context paramContext, Object paramObject)
  {
    this.gmL = paramObject;
    this.context = paramContext;
    this.count = -1;
  }

  public abstract void FZ();

  protected abstract void Ga();

  public abstract Object a(Object paramObject, Cursor paramCursor);

  public void a(int paramInt, ao paramao, Object paramObject)
  {
    ca((String)paramObject);
  }

  public final void a(bd parambd)
  {
    this.gmO = parambd;
  }

  public final void aDU()
  {
    this.gmO = null;
  }

  public final void aEJ()
  {
    if (this.gmN == null)
      this.gmN = new HashMap();
  }

  protected final int aEK()
  {
    if (this.count < 0)
      this.count = getCursor().getCount();
    return this.count;
  }

  protected final Object aEL()
  {
    return this.gmL;
  }

  protected int aiD()
  {
    return 0;
  }

  public void ca(String paramString)
  {
    if (this.gmO != null)
      this.gmO.FX();
    closeCursor();
    FZ();
    if (this.gmO != null)
      this.gmO.FW();
  }

  public final void closeCursor()
  {
    if (this.gmN != null)
      this.gmN.clear();
    if (this.gmM != null)
      this.gmM.close();
    this.count = -1;
  }

  public final Object f(int paramInt, Object paramObject)
  {
    if (mz(paramInt))
      return this.gmL;
    if ((paramInt < 0) || (!getCursor().moveToPosition(paramInt)))
      return null;
    return a(paramObject, getCursor());
  }

  public int getCount()
  {
    if (this.count < 0)
      this.count = getCursor().getCount();
    return this.count + aiD();
  }

  protected final Cursor getCursor()
  {
    if ((this.gmM == null) || (this.gmM.isClosed()))
    {
      Ga();
      Assert.assertNotNull(this.gmM);
    }
    return this.gmM;
  }

  public Object getItem(int paramInt)
  {
    Object localObject2;
    if (mz(paramInt))
      localObject2 = this.gmL;
    do
    {
      return localObject2;
      if (this.gmN == null)
        break;
      localObject2 = this.gmN.get(Integer.valueOf(paramInt));
    }
    while (localObject2 != null);
    if ((paramInt < 0) || (!getCursor().moveToPosition(paramInt)))
      return null;
    if (this.gmN == null)
      return a(this.gmL, getCursor());
    Object localObject1 = a(null, getCursor());
    this.gmN.put(Integer.valueOf(paramInt), localObject1);
    return localObject1;
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public final boolean mz(int paramInt)
  {
    return (paramInt >= this.count) && (paramInt < this.count + aiD());
  }

  protected final void setCursor(Cursor paramCursor)
  {
    this.gmM = paramCursor;
    this.count = -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bc
 * JD-Core Version:    0.6.2
 */