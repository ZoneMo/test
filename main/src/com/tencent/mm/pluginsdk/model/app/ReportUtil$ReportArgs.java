package com.tencent.mm.pluginsdk.model.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ReportUtil$ReportArgs
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new au();
  public int bLJ;
  public String bMO;
  public String cOp;
  public String fhS;

  public ReportUtil$ReportArgs()
  {
  }

  private ReportUtil$ReportArgs(Parcel paramParcel)
  {
    this.bMO = paramParcel.readString();
    this.bLJ = paramParcel.readInt();
    this.fhS = paramParcel.readString();
    this.cOp = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.bMO);
    paramParcel.writeInt(this.bLJ);
    paramParcel.writeString(this.fhS);
    paramParcel.writeString(this.cOp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ReportUtil.ReportArgs
 * JD-Core Version:    0.6.2
 */