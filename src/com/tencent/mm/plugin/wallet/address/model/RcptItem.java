package com.tencent.mm.plugin.wallet.address.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RcptItem
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new h();
  public String code = "";
  public String eWa = "";
  public boolean eWb = false;
  public String name = "";

  public RcptItem()
  {
  }

  public RcptItem(Parcel paramParcel)
  {
    this.name = paramParcel.readString();
    this.code = paramParcel.readString();
    this.eWa = paramParcel.readString();
  }

  public RcptItem(String paramString1, String paramString2, String paramString3)
  {
    this.name = paramString1;
    this.code = paramString2;
    this.eWa = paramString3;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.code);
    paramParcel.writeString(this.eWa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.RcptItem
 * JD-Core Version:    0.6.2
 */