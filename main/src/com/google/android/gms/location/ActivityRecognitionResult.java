package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class ActivityRecognitionResult
  implements SafeParcelable
{
  public static final a Rm = new a();
  int KH = 1;
  List Rn;
  long Ro;
  long Rp;

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "ActivityRecognitionResult [probableActivities=" + this.Rn + ", timeMillis=" + this.Ro + ", elapsedRealtimeMillis=" + this.Rp + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionResult
 * JD-Core Version:    0.6.2
 */