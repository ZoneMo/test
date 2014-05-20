package com.tencent.mapapi.map;

import com.tencent.a.a.a;
import com.tencent.a.a.c;
import java.io.IOException;
import org.json.JSONException;

abstract class am
{
  protected String UK = null;
  protected Object Wr;
  protected String b = "";
  protected String d = "";

  public am(Object paramObject, String paramString)
  {
    this.Wr = paramObject;
    this.b = paramString;
  }

  protected abstract Object f(byte[] paramArrayOfByte);

  public final Object mH()
  {
    if (this.Wr == null);
    while (true)
    {
      return null;
      this.d = mj();
      try
      {
        c localc = a.h(this.d, "Android_SDK");
        if ((localc != null) && (localc.data != null))
        {
          this.UK = localc.XZ;
          try
          {
            Object localObject = f(localc.data);
            return localObject;
          }
          catch (JSONException localJSONException)
          {
            return null;
          }
          catch (IOException localIOException)
          {
            return null;
          }
        }
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }

  protected abstract String mj();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.am
 * JD-Core Version:    0.6.2
 */