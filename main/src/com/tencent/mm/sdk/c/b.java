package com.tencent.mm.sdk.c;

import android.os.Bundle;

public abstract class b
{
  public int bLJ;
  public String cOp;
  public String fhS;
  public String gbZ;

  public abstract int getType();

  public void h(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putInt("_wxapi_baseresp_errcode", this.bLJ);
    paramBundle.putString("_wxapi_baseresp_errstr", this.gbZ);
    paramBundle.putString("_wxapi_baseresp_transaction", this.fhS);
    paramBundle.putString("_wxapi_baseresp_openId", this.cOp);
  }

  public void i(Bundle paramBundle)
  {
    this.bLJ = paramBundle.getInt("_wxapi_baseresp_errcode");
    this.gbZ = paramBundle.getString("_wxapi_baseresp_errstr");
    this.fhS = paramBundle.getString("_wxapi_baseresp_transaction");
    this.cOp = paramBundle.getString("_wxapi_baseresp_openId");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.c.b
 * JD-Core Version:    0.6.2
 */