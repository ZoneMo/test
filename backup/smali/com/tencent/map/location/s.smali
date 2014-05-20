.class public final Lcom/tencent/map/location/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/map/location/aa;
.implements Lcom/tencent/map/location/d;
.implements Lcom/tencent/map/location/n;
.implements Lcom/tencent/map/location/r;


# static fields
.field private static UF:Lcom/tencent/map/location/s;

.field private static Uk:Z


# instance fields
.field private TN:Lcom/tencent/map/location/c;

.field private TW:Z

.field private TX:Ljava/lang/String;

.field private TY:Lcom/tencent/map/location/f;

.field private TZ:J

.field private UA:Lcom/tencent/map/location/g;

.field private UB:Lcom/tencent/map/a/a/b;

.field private UC:Lcom/tencent/map/location/x;

.field private UD:Lcom/tencent/map/location/w;

.field private UE:Lcom/tencent/map/location/v;

.field private UG:J

.field private UH:Lcom/tencent/map/location/z;

.field private UI:Lcom/tencent/map/a/a/d;

.field private UJ:Lcom/tencent/map/a/a/d;

.field private UK:Ljava/lang/String;

.field private UL:Ljava/lang/String;

.field private UM:Ljava/lang/String;

.field private UN:Z

.field private UO:J

.field private UP:Landroid/os/Handler;

.field private UQ:Ljava/lang/Runnable;

.field private final UR:Landroid/content/BroadcastReceiver;

.field private Uc:I

.field private Ud:I

.field private Uh:Lcom/tencent/map/location/m;

.field private Ui:[B

.field private Uj:[B

.field private Ul:Lcom/tencent/map/location/j;

.field private Um:I

.field private Un:I

.field private Uo:I

.field private Ux:Lcom/tencent/map/location/q;

.field private Uy:Lcom/tencent/map/location/o;

.field private a:I

.field private a:Landroid/content/Context;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/map/location/s;->Uk:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/map/location/s;->UF:Lcom/tencent/map/location/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/tencent/map/location/s;->TZ:J

    iput-object v2, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/map/location/s;->Uy:Lcom/tencent/map/location/o;

    iput-object v2, p0, Lcom/tencent/map/location/s;->Ul:Lcom/tencent/map/location/j;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    const/16 v0, 0x400

    iput v0, p0, Lcom/tencent/map/location/s;->a:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/map/location/s;->b:I

    iput-object v2, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    iput-object v2, p0, Lcom/tencent/map/location/s;->TN:Lcom/tencent/map/location/c;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/tencent/map/location/s;->Ui:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/tencent/map/location/s;->Uj:[B

    iput-boolean v3, p0, Lcom/tencent/map/location/s;->TW:Z

    iput-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UD:Lcom/tencent/map/location/w;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UE:Lcom/tencent/map/location/v;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/map/location/s;->UG:J

    iput-object v2, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    iput-object v2, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput-object v2, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iput v3, p0, Lcom/tencent/map/location/s;->Un:I

    iput v3, p0, Lcom/tencent/map/location/s;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/map/location/s;->Uo:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/s;->TX:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/s;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/s;->UK:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/s;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/s;->UL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/map/location/s;->UM:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/tencent/map/location/s;->c:Z

    iput-boolean v3, p0, Lcom/tencent/map/location/s;->UN:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/map/location/s;->UO:J

    iput-object v2, p0, Lcom/tencent/map/location/s;->UP:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/map/location/t;

    invoke-direct {v0, p0}, Lcom/tencent/map/location/t;-><init>(Lcom/tencent/map/location/s;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UQ:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/map/location/u;

    invoke-direct {v0, p0}, Lcom/tencent/map/location/u;-><init>(Lcom/tencent/map/location/s;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UR:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/tencent/map/location/o;

    invoke-direct {v0}, Lcom/tencent/map/location/o;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->Uy:Lcom/tencent/map/location/o;

    new-instance v0, Lcom/tencent/map/location/j;

    invoke-direct {v0}, Lcom/tencent/map/location/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->Ul:Lcom/tencent/map/location/j;

    new-instance v0, Lcom/tencent/map/location/g;

    invoke-direct {v0}, Lcom/tencent/map/location/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    return-void
.end method

.method private F(Z)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v0

    new-instance v1, Lcom/tencent/map/a/a/d;

    invoke-direct {v1}, Lcom/tencent/map/a/a/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3, v6}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/map/a/a/d;->Tl:D

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3, v6}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/map/a/a/d;->Tm:D

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/map/a/a/d;->To:D

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/map/a/a/d;->Tp:D

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/map/a/a/d;->Tq:D

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/map/a/a/d;->Tr:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v5, v0, Lcom/tencent/map/a/a/d;->Tn:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput-boolean v5, v0, Lcom/tencent/map/a/a/d;->TI:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v5, v0, Lcom/tencent/map/a/a/d;->TJ:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v5, v0, Lcom/tencent/map/a/a/d;->TK:I

    new-instance v0, Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-direct {v0, v1}, Lcom/tencent/map/a/a/d;-><init>(Lcom/tencent/map/a/a/d;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iput v5, p0, Lcom/tencent/map/location/s;->Un:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/map/location/s;->UG:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/map/location/s;->TZ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/map/location/s;->UG:J

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v4, v0, Lcom/tencent/map/a/a/d;->TJ:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/map/location/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/map/location/s;->UO:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/map/location/s;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/map/location/s;->UO:J

    return-wide p1
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 13

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v11, :cond_0

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "catalog"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dist"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "latitude"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "longitude"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v0, Lcom/tencent/map/a/a/c;

    invoke-direct/range {v0 .. v9}, Lcom/tencent/map/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_0
    return-object v12
.end method

.method static synthetic a(Lcom/tencent/map/location/s;I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/tencent/map/location/s;->a:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget v1, p0, Lcom/tencent/map/location/s;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->aZ(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/map/location/s;Landroid/location/Location;)V
    .locals 8

    const/4 v7, 0x3

    const-wide v2, 0x4076700000000000L

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v4}, Lcom/tencent/map/location/s;->F(Z)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/map/a/a/d;

    invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v5, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v5, v0, Lcom/tencent/map/a/a/d;->TJ:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/a/a/d;->Tl:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/a/a/d;->Tm:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v1}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/a/a/d;->Tp:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v1}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/a/a/d;->To:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v1}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/a/a/d;->Tq:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v1}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v4}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/a/a/d;->Tr:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v5, v0, Lcom/tencent/map/a/a/d;->Tn:I

    :cond_2
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput-boolean v4, v0, Lcom/tencent/map/a/a/d;->TI:Z

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/tencent/map/location/s;->Un:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    if-eq v0, v7, :cond_3

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    if-ne v0, v6, :cond_4

    :cond_3
    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget v1, v1, Lcom/tencent/map/a/a/d;->TK:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tt:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tt:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tu:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tu:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tv:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tv:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tw:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tw:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tx:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tx:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Ty:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Ty:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tz:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tz:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TA:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TA:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v7, v0, Lcom/tencent/map/a/a/d;->TK:I

    :cond_4
    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    if-ne v0, v6, :cond_7

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget v1, v1, Lcom/tencent/map/a/a/d;->TK:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v0, v0, Lcom/tencent/map/a/a/d;->TH:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TH:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v0, v0, Lcom/tencent/map/a/a/d;->TH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/a/a/c;

    iget-object v2, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v2, v2, Lcom/tencent/map/a/a/d;->TH:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/map/a/a/c;

    invoke-direct {v3, v0}, Lcom/tencent/map/a/a/c;-><init>(Lcom/tencent/map/a/a/c;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/tencent/map/location/s;->me()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v6, v0, Lcom/tencent/map/a/a/d;->TK:I

    :cond_7
    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget v1, v1, Lcom/tencent/map/a/a/d;->TK:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x7

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget v1, v1, Lcom/tencent/map/a/a/d;->Ts:I

    iput v1, v0, Lcom/tencent/map/a/a/d;->Ts:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tt:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tt:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget v0, v0, Lcom/tencent/map/a/a/d;->Ts:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tu:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tu:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tv:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tv:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tw:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tw:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tx:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tx:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Ty:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Ty:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->Tz:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->Tz:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TA:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TA:Ljava/lang/String;

    :cond_8
    :goto_2
    iget v0, p0, Lcom/tencent/map/location/s;->Un:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    if-eqz v0, :cond_b

    :cond_9
    iget v0, p0, Lcom/tencent/map/location/s;->Un:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget v1, p0, Lcom/tencent/map/location/s;->Un:I

    iput v1, v0, Lcom/tencent/map/a/a/d;->TJ:I

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/map/location/s;->UG:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/map/location/s;->TZ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/map/location/s;->UG:J

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TB:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TB:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TC:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TC:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TD:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TE:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TF:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TF:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    iget-object v1, v1, Lcom/tencent/map/a/a/d;->TG:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/map/a/a/d;->TG:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/map/location/s;Lcom/tencent/map/location/m;)V
    .locals 5

    iput-object p1, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    invoke-virtual {v0}, Lcom/tencent/map/location/g;->lZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    invoke-virtual {v0}, Lcom/tencent/map/location/g;->mh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/location/g;->f(J)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/map/location/s;->g:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/tencent/map/location/m;->a:I

    iget v1, p1, Lcom/tencent/map/location/m;->b:I

    iget v2, p1, Lcom/tencent/map/location/m;->Uc:I

    iget v3, p1, Lcom/tencent/map/location/m;->Ud:I

    iget v4, p1, Lcom/tencent/map/location/m;->Um:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/map/location/ac;->a(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/map/location/s;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/map/location/s;->g:I

    :cond_1
    invoke-direct {p0}, Lcom/tencent/map/location/s;->md()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/map/location/s;Lcom/tencent/map/location/q;)V
    .locals 6

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/map/location/s;->F(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->TN:Lcom/tencent/map/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->TN:Lcom/tencent/map/location/c;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v1}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v3}, Lcom/tencent/map/location/q;->ma()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/location/c;->a(DDLcom/tencent/map/location/d;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/map/location/s;Lcom/tencent/map/location/z;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    invoke-direct {p0}, Lcom/tencent/map/location/s;->md()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/map/location/s;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/tencent/map/location/ac;->am(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tencent/map/location/s;->g:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tencent/map/location/s;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/map/location/s;->g:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    invoke-virtual {v0, v6, v2}, Lcom/tencent/map/a/a/b;->a([BI)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/map/a/a/d;

    invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v3, p0, Lcom/tencent/map/location/s;->Un:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v3, v0, Lcom/tencent/map/a/a/d;->TJ:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v2, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/map/a/a/b;->a([BI)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    if-nez v0, :cond_5

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/tencent/map/location/s;->aj(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v1, v1, Lcom/tencent/map/location/m;->b:I

    iget-object v2, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v2, v2, Lcom/tencent/map/location/m;->Uc:I

    iget-object v3, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v3, v3, Lcom/tencent/map/location/m;->Ud:I

    iget-object v4, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v4, v4, Lcom/tencent/map/location/m;->Um:I

    iget-object v5, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    invoke-virtual {v5}, Lcom/tencent/map/location/z;->lY()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/location/f;->b(IIIILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v1, v1, Lcom/tencent/map/location/m;->b:I

    iget-object v2, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v2, v2, Lcom/tencent/map/location/m;->Uc:I

    iget-object v3, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v3, v3, Lcom/tencent/map/location/m;->Ud:I

    iget-object v4, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v4, v4, Lcom/tencent/map/location/m;->Um:I

    iget-object v5, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    invoke-virtual {v5}, Lcom/tencent/map/location/z;->lY()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/location/f;->a(IIIILjava/util/List;)V

    :cond_7
    iget-boolean v0, p0, Lcom/tencent/map/location/s;->TW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UD:Lcom/tencent/map/location/w;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/map/location/s;->UD:Lcom/tencent/map/location/w;

    invoke-virtual {v0}, Lcom/tencent/map/location/w;->interrupt()V

    :cond_8
    iput-object v6, p0, Lcom/tencent/map/location/s;->UD:Lcom/tencent/map/location/w;

    new-instance v0, Lcom/tencent/map/location/w;

    invoke-direct {v0, p0, p1}, Lcom/tencent/map/location/w;-><init>(Lcom/tencent/map/location/s;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UD:Lcom/tencent/map/location/w;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UD:Lcom/tencent/map/location/w;

    invoke-virtual {v0}, Lcom/tencent/map/location/w;->start()V

    goto/16 :goto_0

    :cond_9
    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/map/location/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/map/location/s;->TW:Z

    return p1
.end method

.method private aj(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x4

    const-wide/high16 v8, 0x4024

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v0, Lcom/tencent/map/a/a/d;

    invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v5, 0x1

    iput v5, v4, Lcom/tencent/map/a/a/d;->Tn:I

    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v5, "latitude"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/map/a/a/d;->Tl:D

    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v5, "longitude"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/map/a/a/d;->Tm:D

    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v5, "altitude"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/map/a/a/d;->To:D

    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v5, "accuracy"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v0, 0x1

    invoke-static {v5, v6, v0}, Lcom/tencent/map/location/ac;->a(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/map/a/a/d;->Tp:D

    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-ne v0, v2, :cond_a

    move v0, v2

    :goto_0
    iput-boolean v0, v4, Lcom/tencent/map/a/a/d;->TI:Z

    const-string v0, "bearing"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v0, -0x64

    if-eqz v4, :cond_0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v2, :cond_0

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget v0, v0, Lcom/tencent/map/location/m;->Un:I

    :cond_1
    iget-object v4, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v5, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-wide v5, v5, Lcom/tencent/map/a/a/d;->Tp:D

    const/4 v7, 0x6

    if-lt v1, v7, :cond_b

    const-wide/high16 v0, 0x4044

    :goto_1
    iput-wide v0, v4, Lcom/tencent/map/a/a/d;->Tp:D

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    if-ne v0, v10, :cond_3

    :cond_2
    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-ne v0, v2, :cond_3

    const-string v0, "details"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "subnation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/map/a/a/d;->ah(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "town"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/map/a/a/d;->Tx:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "village"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/map/a/a/d;->Ty:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "street"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/map/a/a/d;->Tz:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "street_no"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/map/a/a/d;->TA:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/map/a/a/d;->Ts:I

    :cond_3
    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    if-ne v0, v10, :cond_4

    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-ne v0, v2, :cond_4

    const-string v0, "details"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "poilist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-static {v0}, Lcom/tencent/map/location/s;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/map/a/a/d;->TH:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x4

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    :cond_4
    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-ne v0, v2, :cond_6

    const-string v0, "details"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "subnation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v1, :cond_13

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/map/a/a/d;->ah(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "town"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->Tx:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "village"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->Ty:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "street"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->Tz:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "street_no"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/map/a/a/d;->TA:Ljava/lang/String;

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v1, v0, Lcom/tencent/map/a/a/d;->Ts:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x7

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    :cond_6
    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/map/a/a/d;->TJ:I

    new-instance v0, Lcom/tencent/map/a/a/d;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-direct {v0, v1}, Lcom/tencent/map/a/a/d;-><init>(Lcom/tencent/map/a/a/d;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/map/location/s;->Un:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    invoke-virtual {v0, p1}, Lcom/tencent/map/location/f;->ai(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/map/location/s;->UG:J

    :cond_9
    return-void

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x5

    if-ne v1, v7, :cond_c

    const-wide/high16 v0, 0x404e

    goto/16 :goto_1

    :cond_c
    if-ne v1, v10, :cond_d

    const-wide v0, 0x4051800000000000L

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x3

    if-ne v1, v7, :cond_e

    const-wide v0, 0x4056800000000000L

    goto/16 :goto_1

    :cond_e
    if-ne v1, v11, :cond_f

    const-wide v0, 0x405b800000000000L

    goto/16 :goto_1

    :cond_f
    const/16 v7, -0x48

    if-lt v0, v7, :cond_10

    if-nez v1, :cond_10

    const-wide v0, 0x3fdccccccccccccdL

    mul-double/2addr v0, v5

    div-double/2addr v0, v8

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    :goto_4
    int-to-double v0, v0

    goto/16 :goto_1

    :cond_10
    const-wide/high16 v0, 0x4059

    cmpg-double v0, v5, v0

    if-gtz v0, :cond_11

    const-wide/high16 v0, 0x3ff0

    sub-double v0, v5, v0

    div-double/2addr v0, v8

    const-wide/high16 v5, 0x3ff0

    add-double/2addr v0, v5

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    goto :goto_4

    :cond_11
    const-wide/high16 v0, 0x4059

    cmpl-double v0, v5, v0

    if-lez v0, :cond_12

    const-wide/high16 v0, 0x4089

    cmpg-double v0, v5, v0

    if-gtz v0, :cond_12

    const-wide v0, 0x3feb333333333333L

    mul-double/2addr v0, v5

    div-double/2addr v0, v8

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    goto :goto_4

    :cond_12
    const-wide v0, 0x3fe999999999999aL

    mul-double/2addr v0, v5

    div-double/2addr v0, v8

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    goto :goto_4

    :cond_13
    if-ne v1, v2, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "nation"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->Tt:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "admin_level_1"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->TB:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "admin_level_2"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->TC:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "admin_level_3"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->TD:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "locality"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->TE:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "sublocality"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/a/a/d;->TF:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const-string v4, "route"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/map/a/a/d;->TG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/tencent/map/a/a/d;

    invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v11, v0, Lcom/tencent/map/a/a/d;->TJ:I

    iput v11, p0, Lcom/tencent/map/location/s;->Un:I

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/g;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/map/location/s;I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    :cond_0
    iput v0, p0, Lcom/tencent/map/location/s;->b:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget v1, p0, Lcom/tencent/map/location/s;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->aZ(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/map/location/s;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/map/location/s;->aj(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/s;->TX:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/map/location/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/map/location/s;->md()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/x;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/s;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/tencent/map/location/s;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/s;->Un:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/s;->UK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/v;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/location/s;->UE:Lcom/tencent/map/location/v;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/s;->UL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/q;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/map/location/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/map/location/s;->me()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/map/location/s;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/s;->Uo:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/map/location/s;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/map/location/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/map/location/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->TX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lZ()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/map/location/s;->Uk:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/map/location/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized mb()Lcom/tencent/map/location/s;
    .locals 2

    const-class v1, Lcom/tencent/map/location/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/map/location/s;->UF:Lcom/tencent/map/location/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/map/location/s;

    invoke-direct {v0}, Lcom/tencent/map/location/s;-><init>()V

    sput-object v0, Lcom/tencent/map/location/s;->UF:Lcom/tencent/map/location/s;

    :cond_0
    sget-object v0, Lcom/tencent/map/location/s;->UF:Lcom/tencent/map/location/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private md()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/map/location/s;->UE:Lcom/tencent/map/location/v;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/map/location/v;

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    iget-object v2, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    iget-object v3, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/map/location/v;-><init>(Lcom/tencent/map/location/s;Lcom/tencent/map/location/q;Lcom/tencent/map/location/m;Lcom/tencent/map/location/z;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UE:Lcom/tencent/map/location/v;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UE:Lcom/tencent/map/location/v;

    invoke-virtual {v0}, Lcom/tencent/map/location/v;->start()V

    goto :goto_0
.end method

.method private me()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/tencent/map/a/a/d;

    invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v2, p0, Lcom/tencent/map/location/s;->Un:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v2, v0, Lcom/tencent/map/a/a/d;->TJ:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/map/a/a/d;->TK:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    iput v2, v0, Lcom/tencent/map/a/a/d;->Tn:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/map/location/s;->Uc:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget-object v1, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V

    :cond_0
    return-void
.end method

.method static synthetic mf()V
    .locals 0

    return-void
.end method

.method static synthetic mg()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/map/location/s;->Uk:Z

    return v0
.end method

.method static synthetic n(Lcom/tencent/map/location/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/map/location/s;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/s;->b:I

    return v0
.end method

.method static synthetic p(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ul:Lcom/tencent/map/location/j;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/map/location/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/map/location/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/map/location/s;->c:Z

    return v0
.end method

.method static synthetic s(Lcom/tencent/map/location/s;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/s;->Ud:I

    return v0
.end method

.method static synthetic t(Lcom/tencent/map/location/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/map/location/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/s;->UM:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(DD)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uj:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/tencent/map/location/x;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/location/Location;

    const-string v3, "Deflect"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v2, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    invoke-virtual {v2, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/map/location/m;)V
    .locals 3

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uj:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/tencent/map/location/x;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    invoke-virtual {v2, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/map/location/q;)V
    .locals 3

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uj:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/tencent/map/location/x;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    invoke-virtual {v2, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/map/location/z;)V
    .locals 3

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uj:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Lcom/tencent/map/location/x;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    invoke-virtual {v2, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ui:[B

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/map/location/a;->lU()Lcom/tencent/map/location/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/map/location/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tencent/map/location/s;->UM:Ljava/lang/String;

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/tencent/map/location/s;->Ui:[B

    monitor-enter v3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v3

    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UM:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/map/location/ac;->ak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/map/location/x;

    invoke-direct {v0, p0}, Lcom/tencent/map/location/x;-><init>(Lcom/tencent/map/location/s;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/map/location/s;->UP:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    invoke-static {}, Lcom/tencent/a/a/b;->na()Lcom/tencent/a/a/b;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/a/a/b;->r(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/map/location/s;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/map/location/s;->UR:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/map/a/a/b;->lR()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/location/s;->Uc:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/map/a/a/b;->lS()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/location/s;->Ud:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/map/a/a/b;->lT()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/location/s;->Um:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/tencent/map/location/s;->UG:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/location/s;->UN:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/map/location/s;->Uo:I

    iget-object v0, p0, Lcom/tencent/map/location/s;->Uy:Lcom/tencent/map/location/o;

    iget-object v4, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, v4}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/r;Landroid/content/Context;)Z

    move-result v0

    iget-object v4, p0, Lcom/tencent/map/location/s;->Ul:Lcom/tencent/map/location/j;

    iget-object v5, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, p0}, Lcom/tencent/map/location/j;->a(Landroid/content/Context;Lcom/tencent/map/location/n;)Z

    move-result v4

    iget-object v5, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    iget-object v6, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, p0}, Lcom/tencent/map/location/g;->a(Landroid/content/Context;Lcom/tencent/map/location/aa;)Z

    move-result v5

    invoke-static {}, Lcom/tencent/map/location/f;->lW()Lcom/tencent/map/location/f;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    invoke-static {}, Lcom/tencent/map/location/c;->lV()Lcom/tencent/map/location/c;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/map/location/s;->TN:Lcom/tencent/map/location/c;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/map/location/s;->Ux:Lcom/tencent/map/location/q;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/map/location/s;->Uh:Lcom/tencent/map/location/m;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/map/location/s;->UH:Lcom/tencent/map/location/z;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/map/location/s;->UI:Lcom/tencent/map/a/a/d;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/map/location/s;->UJ:Lcom/tencent/map/a/a/d;

    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/map/location/s;->Un:I

    iget-object v6, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/tencent/map/location/s;->TY:Lcom/tencent/map/location/f;

    invoke-virtual {v6}, Lcom/tencent/map/location/f;->lX()V

    :cond_4
    const/4 v6, 0x1

    iput v6, p0, Lcom/tencent/map/location/s;->g:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tencent/map/location/s;->Um:I

    if-nez v0, :cond_5

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    monitor-exit v3

    move v0, v2

    goto/16 :goto_0

    :cond_7
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final bb(I)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uj:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/tencent/map/location/x;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    invoke-virtual {v2, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bc(I)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/map/location/s;->Uj:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/tencent/map/location/x;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/location/s;->UC:Lcom/tencent/map/location/x;

    invoke-virtual {v2, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final lX()V
    .locals 3

    iget-object v1, p0, Lcom/tencent/map/location/s;->Ui:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/location/s;->UB:Lcom/tencent/map/a/a/b;

    iget-object v0, p0, Lcom/tencent/map/location/s;->UP:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/map/location/s;->UQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/map/location/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/map/location/s;->UR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/tencent/map/location/s;->Uy:Lcom/tencent/map/location/o;

    invoke-virtual {v0}, Lcom/tencent/map/location/o;->lX()V

    iget-object v0, p0, Lcom/tencent/map/location/s;->Ul:Lcom/tencent/map/location/j;

    invoke-virtual {v0}, Lcom/tencent/map/location/j;->lX()V

    iget-object v0, p0, Lcom/tencent/map/location/s;->UA:Lcom/tencent/map/location/g;

    invoke-virtual {v0}, Lcom/tencent/map/location/g;->lX()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final mc()V
    .locals 4

    const-wide/16 v2, 0x7d0

    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x4e20

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    iput-wide v2, p0, Lcom/tencent/map/location/s;->TZ:J

    :cond_0
    return-void
.end method
