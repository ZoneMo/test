package com.tencent.mm.plugin.wallet.a.a;

import org.json.JSONObject;

public final class e
{
  String cZs;
  String csU;
  private String dcy;
  String eZM;
  String eZN;
  String eZO;
  long eZP;
  int eZQ;
  String eZR;
  String eZS;
  String eZT;
  private String eZU;

  public e(String paramString1, String paramString2, String paramString3)
  {
    this.eZM = paramString1;
    this.eZS = paramString2;
    JSONObject localJSONObject = new JSONObject(this.eZS);
    this.eZN = localJSONObject.optString("orderId");
    this.eZO = localJSONObject.optString("packageName");
    this.cZs = localJSONObject.optString("productId");
    this.eZP = localJSONObject.optLong("purchaseTime");
    this.eZQ = localJSONObject.optInt("purchaseState");
    this.eZR = localJSONObject.optString("developerPayload");
    this.csU = localJSONObject.optString("token", localJSONObject.optString("purchaseToken"));
    this.eZT = paramString3;
  }

  public e(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.cZs = paramString1;
    this.eZR = paramString2;
    this.eZU = paramString3;
    this.dcy = paramString4;
  }

  public final String Lg()
  {
    return this.cZs;
  }

  public final String anA()
  {
    return this.dcy;
  }

  public final String anw()
  {
    return this.eZN;
  }

  public final String anx()
  {
    return this.eZR;
  }

  public final String any()
  {
    return this.eZS;
  }

  public final String anz()
  {
    return this.eZU;
  }

  public final String rB()
  {
    return this.eZT;
  }

  public final String toString()
  {
    return "PurchaseInfo(type:" + this.eZM + "):" + this.eZS;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.a.a.e
 * JD-Core Version:    0.6.2
 */