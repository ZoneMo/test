package com.tencent.mm.ui.tools;

import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import java.util.ArrayList;

final class gc
{
  public JsapiPermissionWrapper hmM;
  public GeneralControlWrapper hmN;
  public ArrayList hmO;

  public gc(JsapiPermissionWrapper paramJsapiPermissionWrapper, GeneralControlWrapper paramGeneralControlWrapper, ArrayList paramArrayList)
  {
    this.hmM = paramJsapiPermissionWrapper;
    this.hmN = paramGeneralControlWrapper;
    this.hmO = paramArrayList;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Permission: jsPerm = ");
    localStringBuilder.append(this.hmM);
    localStringBuilder.append(", genCtrl = ");
    localStringBuilder.append(this.hmN);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gc
 * JD-Core Version:    0.6.2
 */