package com.tencent.mm.plugin.wallet.order.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Orders$Commodity
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new c();
  public String dCE;
  public String dCF;
  public String dCG;
  public String dCH;
  public String dCI;
  public double dCJ = 0.0D;
  public String dCK;
  public String dCL;
  public int dCM;
  public String dCN;
  public String dCO;
  public String dCP;
  public String dCQ;
  public String dCs;
  public String desc;

  public Orders$Commodity()
  {
  }

  public Orders$Commodity(Parcel paramParcel)
  {
    this.dCE = paramParcel.readString();
    this.dCF = paramParcel.readString();
    this.dCG = paramParcel.readString();
    this.dCH = paramParcel.readString();
    this.desc = paramParcel.readString();
    this.dCI = paramParcel.readString();
    this.dCJ = paramParcel.readDouble();
    this.dCK = paramParcel.readString();
    this.dCL = paramParcel.readString();
    this.dCM = paramParcel.readInt();
    this.dCN = paramParcel.readString();
    this.dCO = paramParcel.readString();
    this.dCP = paramParcel.readString();
    this.dCQ = paramParcel.readString();
    this.dCs = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.dCE);
    paramParcel.writeString(this.dCF);
    paramParcel.writeString(this.dCG);
    paramParcel.writeString(this.dCH);
    paramParcel.writeString(this.desc);
    paramParcel.writeString(this.dCI);
    paramParcel.writeDouble(this.dCJ);
    paramParcel.writeString(this.dCK);
    paramParcel.writeString(this.dCL);
    paramParcel.writeInt(this.dCM);
    paramParcel.writeString(this.dCN);
    paramParcel.writeString(this.dCO);
    paramParcel.writeString(this.dCP);
    paramParcel.writeString(this.dCQ);
    paramParcel.writeString(this.dCs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.order.model.Orders.Commodity
 * JD-Core Version:    0.6.2
 */