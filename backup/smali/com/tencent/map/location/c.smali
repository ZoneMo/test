.class public final Lcom/tencent/map/location/c;
.super Ljava/lang/Object;


# static fields
.field private static TN:Lcom/tencent/map/location/c;


# instance fields
.field private TO:D

.field private TP:D

.field private TQ:D

.field private TR:D

.field private TS:D

.field private TT:D

.field private TU:Lcom/tencent/map/location/d;

.field private TV:Lcom/tencent/map/location/e;

.field private TW:Z

.field public TX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/tencent/map/location/c;->TO:D

    iput-wide v0, p0, Lcom/tencent/map/location/c;->TP:D

    iput-wide v0, p0, Lcom/tencent/map/location/c;->TQ:D

    iput-wide v0, p0, Lcom/tencent/map/location/c;->TR:D

    iput-wide v0, p0, Lcom/tencent/map/location/c;->TS:D

    iput-wide v0, p0, Lcom/tencent/map/location/c;->TT:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/location/c;->TV:Lcom/tencent/map/location/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/location/c;->TW:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/c;->TX:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/map/location/c;)Lcom/tencent/map/location/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/map/location/c;[BLjava/lang/String;)V
    .locals 9

    const-wide v7, 0x4076800000000000L

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/map/location/c;->TQ:D

    sub-double v5, v1, v5

    iput-wide v5, p0, Lcom/tencent/map/location/c;->TS:D

    iget-wide v5, p0, Lcom/tencent/map/location/c;->TR:D

    sub-double v5, v3, v5

    iput-wide v5, p0, Lcom/tencent/map/location/c;->TT:D

    iget-wide v5, p0, Lcom/tencent/map/location/c;->TQ:D

    iput-wide v5, p0, Lcom/tencent/map/location/c;->TO:D

    iget-wide v5, p0, Lcom/tencent/map/location/c;->TR:D

    iput-wide v5, p0, Lcom/tencent/map/location/c;->TP:D

    iget-object v0, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/map/location/d;->a(DD)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    invoke-interface {v1, v7, v8, v7, v8}, Lcom/tencent/map/location/d;->a(DD)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    invoke-interface {v0, v7, v8, v7, v8}, Lcom/tencent/map/location/d;->a(DD)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/map/location/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/map/location/c;->TW:Z

    return p1
.end method

.method public static lV()Lcom/tencent/map/location/c;
    .locals 1

    sget-object v0, Lcom/tencent/map/location/c;->TN:Lcom/tencent/map/location/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/map/location/c;

    invoke-direct {v0}, Lcom/tencent/map/location/c;-><init>()V

    sput-object v0, Lcom/tencent/map/location/c;->TN:Lcom/tencent/map/location/c;

    :cond_0
    sget-object v0, Lcom/tencent/map/location/c;->TN:Lcom/tencent/map/location/c;

    return-object v0
.end method


# virtual methods
.method public final a(DDLcom/tencent/map/location/d;)V
    .locals 9

    const-wide/16 v2, 0x0

    iput-object p5, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    iget-wide v0, p0, Lcom/tencent/map/location/c;->TS:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/map/location/c;->TT:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    new-array v8, v0, [F

    iget-wide v4, p0, Lcom/tencent/map/location/c;->TO:D

    iget-wide v6, p0, Lcom/tencent/map/location/c;->TP:D

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const v1, 0x44bb8000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/c;->TU:Lcom/tencent/map/location/d;

    iget-wide v1, p0, Lcom/tencent/map/location/c;->TS:D

    add-double/2addr v1, p1

    iget-wide v3, p0, Lcom/tencent/map/location/c;->TT:D

    add-double/2addr v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/map/location/d;->a(DD)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/map/location/c;->TW:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"source\":101,\"access_token\":\"160e7bd42dec9428721034e0146fc6dd\",\"location\":{\"latitude\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"longitude\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/location/c;->TX:Ljava/lang/String;

    iput-wide p1, p0, Lcom/tencent/map/location/c;->TQ:D

    iput-wide p3, p0, Lcom/tencent/map/location/c;->TR:D

    new-instance v0, Lcom/tencent/map/location/e;

    invoke-direct {v0, p0}, Lcom/tencent/map/location/e;-><init>(Lcom/tencent/map/location/c;)V

    iput-object v0, p0, Lcom/tencent/map/location/c;->TV:Lcom/tencent/map/location/e;

    iget-object v0, p0, Lcom/tencent/map/location/c;->TV:Lcom/tencent/map/location/e;

    invoke-virtual {v0}, Lcom/tencent/map/location/e;->start()V

    goto :goto_0
.end method
