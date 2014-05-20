package com.tencent.mm.sdk.c;

import android.os.Bundle;

public abstract class a
{
  public String cOp;
  public String fhS;

  public abstract int getType();

  public void h(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putString("_wxapi_basereq_transaction", this.fhS);
    paramBundle.putString("_wxapi_basereq_openid", this.cOp);
  }

  public void i(Bundle paramBundle)
  {
    this.fhS = paramBundle.getString("_wxapi_basereq_transaction");
    this.cOp = paramBundle.getString("_wxapi_basereq_openid");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.c.a
 * JD-Core Version:    0.6.2
 */