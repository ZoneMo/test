package com.tencent.mm.ui.tools;

import com.tencent.mm.ag.f;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class ga
  implements f
{
  public JsapiPermissionWrapper hmE;
  public GeneralControlWrapper hmF;

  public final String Dm()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject1;
    Object localObject2;
    if (this.hmE == null)
    {
      localObject1 = "0";
      localStringBuilder.append(localObject1);
      localStringBuilder.append(";");
      if (this.hmE != null)
        break label93;
      localObject2 = "0";
      label42: localStringBuilder.append(localObject2);
      localStringBuilder.append(";");
      if (this.hmF != null)
        break label108;
    }
    label93: label108: for (Object localObject3 = "0"; ; localObject3 = Integer.valueOf(this.hmF.avD()))
    {
      localStringBuilder.append(localObject3);
      return localStringBuilder.toString();
      localObject1 = Integer.valueOf(this.hmE.avD());
      break;
      localObject2 = Integer.valueOf(this.hmE.avH());
      break label42;
    }
  }

  public final void gz(String paramString)
  {
    this.hmE = new JsapiPermissionWrapper(null);
    this.hmF = new GeneralControlWrapper(null);
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.CacheItem", "convertFromString fail, str is null");
      return;
    }
    String[] arrayOfString = paramString.split(";");
    if ((arrayOfString == null) || (arrayOfString.length == 0))
    {
      aa.e("MicroMsg.CacheItem", "convertFromString fail, tokens is empty");
      return;
    }
    aa.d("MicroMsg.CacheItem", "convertFromString, tokens length = " + arrayOfString.length);
    try
    {
      this.hmE = new JsapiPermissionWrapper(Integer.valueOf(arrayOfString[0]).intValue(), Integer.valueOf(arrayOfString[1]).intValue());
      this.hmF = new GeneralControlWrapper(Integer.valueOf(arrayOfString[2]).intValue());
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.CacheItem", "convertFromString fail, ex = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ga
 * JD-Core Version:    0.6.2
 */