package com.tencent.mm.plugin.wallet.pay.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PayInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new i();
  public String appId;
  public String bOM;
  public String bPE;
  public int cCI;
  public String dnL;
  public String faP;
  public String fbc;
  public int fbg = -1;
  public int fbh;
  public String fbi;
  public String fbj;
  public String fbk;

  public PayInfo()
  {
  }

  public PayInfo(Parcel paramParcel)
  {
    this.fbh = paramParcel.readInt();
    this.faP = paramParcel.readString();
    this.dnL = paramParcel.readString();
    this.appId = paramParcel.readString();
    this.fbc = paramParcel.readString();
    this.fbi = paramParcel.readString();
    this.fbj = paramParcel.readString();
    this.bPE = paramParcel.readString();
    this.bOM = paramParcel.readString();
    this.cCI = paramParcel.readInt();
    this.fbg = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = Integer.valueOf(this.fbh);
    arrayOfObject[1] = this.faP;
    arrayOfObject[2] = this.dnL;
    arrayOfObject[3] = this.appId;
    arrayOfObject[4] = this.fbc;
    arrayOfObject[5] = this.fbi;
    arrayOfObject[6] = this.fbj;
    arrayOfObject[7] = this.bPE;
    return String.format("sense : %d, reqKey : %s, uuid : %s, appId : %s, appSource : %s, partnerId : %s, paySign : %s, productId : %s ", arrayOfObject);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.fbh);
    paramParcel.writeString(this.faP);
    paramParcel.writeString(this.dnL);
    paramParcel.writeString(this.appId);
    paramParcel.writeString(this.fbc);
    paramParcel.writeString(this.fbi);
    paramParcel.writeString(this.fbj);
    paramParcel.writeString(this.bPE);
    paramParcel.writeString(this.bOM);
    paramParcel.writeInt(this.cCI);
    paramParcel.writeInt(this.fbg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.PayInfo
 * JD-Core Version:    0.6.2
 */