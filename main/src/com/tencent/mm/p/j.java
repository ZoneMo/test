package com.tencent.mm.p;

import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class j
{
  public String cnO;
  public String cnh;
  public String description;

  public static List c(JSONArray paramJSONArray)
  {
    LinkedList localLinkedList = new LinkedList();
    if (paramJSONArray == null);
    while (true)
    {
      return localLinkedList;
      int i = 0;
      try
      {
        int j = paramJSONArray.length();
        while (i < j)
        {
          j localj = new j();
          JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
          localj.cnh = localJSONObject.optString("icon");
          localj.description = localJSONObject.optString("description");
          localj.cnO = localJSONObject.optString("description_key");
          localLinkedList.add(localj);
          i++;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return localLinkedList;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.j
 * JD-Core Version:    0.6.2
 */